import {Request, Response, NextFunction, Router} from 'express';
import {Task, User, TaskStatus} from "../core/database";
import {DefaultResponse, Locals} from "../types/response";
import multer from "multer";
import config from "../config";
import {AllowNull, BelongsTo, Column, CreatedAt, DataType, Default, UpdatedAt} from "sequelize-typescript";
import {Op} from "sequelize";
import {v4} from "uuid";
import path from "path";

const imageTypes = [
    '.jpeg',
    '.jpg',
    '.png',
    '.svg',
    '.gif'
];

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'public/images')
    },
    filename: function (req, file, cb) {
        cb(null, v4() + path.extname(file.originalname))
    }
})

const upload = multer({storage: storage})

const router = Router();

/* GET users listing. */
router.post('/create', upload.single("image"), async function(req:Request, res:Response<DefaultResponse<number> ,Locals>, next:NextFunction) {
    try{
        if(!res.locals.user){
            throw Error('Unauthorized');
        }

        const ext = path.extname(req.file!.originalname);
        if (!req.file || !imageTypes.find(imageType => ext === imageType)) {
            throw new Error('UnsupportedFormat');
        }
        const user = await User!.findByPk(res.locals.user!.id);
        const task = await Task.create({
            image: req.file!.filename,
            title: req.body.title,
            description: req.body.description,
            creatorId: user?.id,
        });
        return res.send({
            code: 0,
            result: task.id,
        });
    }
    catch (e:any){
        res.status(500);
        res.send({
            code: 500,
            message: e.toString(),
        });
    }
});

router.delete('/delete/:id', async function(req:Request, res:Response<DefaultResponse<boolean> ,Locals>, next:NextFunction) {
    try{
        if(!res.locals.user){
            throw Error('Unauthorized');
        }
        const task = await Task.destroy(
            {
                where: {
                    creatorId: res.locals.user!.id,
                    id: req.params.id,
                },
            }
        );
        return res.send({
            code: 0,
            result: true,
        });
    }
    catch (e:any){
        res.status(500);
        res.send({
            code: 500,
            message: e.toString(),
        });
    }
});

enum TaskActions {
    delete = "delete",
    accept = "accept",
    confirm = "confirm",
    cancel = "cancel",
}

interface TaskInfo {
    createdAt: string;

    updatedAt: string;

    creator: number;

    executor?: number;

    title: string;

    description: string;

    image: string;

    status: string;

    actions: TaskActions[];

    id: number;
}

// router.delete('/info/:id', async function(req:Request, res:Response<DefaultResponse<TaskInfo> ,Locals>, next:NextFunction) {
//     try{
//         if(res.locals.user){
//             throw Error('Unauthorized');
//         }
//         const task = await Task.findByPk(req.params.id);
//
//         if(!task){
//             res.status(404);
//             res.send({
//                 code: 404,
//                 message: "Task not found",
//             });
//             return;
//         }
//
//         return res.send({
//             code: 0,
//             result: mapTask(task, res.locals.user!),
//         });
//     }
//     catch (e:any){
//         res.status(500);
//         res.send({
//             code: 500,
//             message: e.toString(),
//         });
//     }
// });

router.patch('/accept/:id', async function(req:Request, res:Response<DefaultResponse<TaskInfo> ,Locals>, next:NextFunction) {
    try{
        if(!res.locals.user){
            throw Error('Unauthorized');
        }
        const task = (await Task.findAll(
            {
                where: {
                    executorId: null,
                    status: TaskStatus.new,
                    id: req.params.id,
                },
                include: [{ all: true }],
            }
        ))[0];

        if(!task){
            res.status(404);
            res.send({
                code: 404,
                message: "Task not found",
            });
            return;
        }
        if(task.creator?.id !== res.locals.user!.id && !task.executor?.id && task.status === TaskStatus.new){
            task.status = TaskStatus.inProgress;
            task.executorId = res.locals.user!.id;
        }
        await task.save();
        return res.send({
            code: 0,
            result: mapTask(task, res.locals.user!),
        });
    }
    catch (e:any){
        res.status(500);
        res.send({
            code: 500,
            message: e.toString(),
        });
    }
});

router.patch('/confirm/:id', async function(req:Request, res:Response<DefaultResponse<TaskInfo> ,Locals>, next:NextFunction) {
    try{
        if(!res.locals.user){
            throw Error('Unauthorized');
        }
        const task = await Task.findOne({
            where: {
                executorId: res.locals.user.id,
                status: TaskStatus.inProgress,
                id: req.params.id,
            },
            include: [{ all: true }],
        });

        if(!task){
            res.status(404);
            res.send({
                code: 404,
                message: "Task not found",
            });
            return;
        }
        task.status = TaskStatus.completed;
        await task.save();
        return res.send({
            code: 0,
            result: mapTask(task, res.locals.user!),
        });
    }
    catch (e:any){
        res.status(500);
        res.send({
            code: 500,
            message: e.toString(),
        });
    }
});

router.patch('/cancel/:id', async function(req:Request, res:Response<DefaultResponse<TaskInfo> ,Locals>, next:NextFunction) {
    try{
        if(!res.locals.user){
            throw Error('Unauthorized');
        }
        const task = await Task.findOne({
            where: {
                executorId: res.locals.user.id,
                status: TaskStatus.inProgress,
                id: req.params.id,
            },
            include: [{ all: true }],
        });

        if(!task){
            res.status(404);
            res.send({
                code: 404,
                message: "Task not found",
            });
            return;
        }
        task.status = TaskStatus.new;
        task.executorId = null;
        await task.save();
        return res.send({
            code: 0,
            result: mapTask(task, res.locals.user!),
        });
    }
    catch (e:any){
        res.status(500);
        res.send({
            code: 500,
            message: e.toString(),
        });
    }
});

router.get('/list/new', async function(req:Request, res:Response<DefaultResponse<TaskInfo[]> ,Locals>, next:NextFunction) {
    try{
        if(!res.locals.user){
            throw Error('Unauthorized');
        }
        const tasks = await Task.findAll(
            {
                where: {
                    executorId: null,
                    status: TaskStatus.new,
                },
                include: [{ all: true }],
            }
        );
        if(!tasks){
            res.status(404);
            res.send({
                code: 404,
                message: "Task not found",
            });
            return;
        }


        return res.send({
            code: 0,
            result: tasks.map((el) => mapTask(el, res.locals.user!)),
        });
    }
    catch (e:any){
        res.status(500);
        res.send({
            code: 500,
            message: e.toString(),
        });
    }
});

router.get('/list/in-progress', async function(req:Request, res:Response<DefaultResponse<TaskInfo[]> ,Locals>, next:NextFunction) {
    try{
        if(!res.locals.user){
            throw Error('Unauthorized');
        }
        const tasks = await Task.findAll(
            {
                where: {
                    executorId: res.locals.user.id,
                    status: TaskStatus.inProgress,
                },
                include: [{ all: true }],
            }
        );

        if(!tasks){
            res.status(404);
            res.send({
                code: 404,
                message: "Task not found",
            });
            return;
        }


        return res.send({
            code: 0,
            result: tasks.map((el) => mapTask(el, res.locals.user!)),
        });
    }
    catch (e:any){
        res.status(500);
        res.send({
            code: 500,
            message: e.toString(),
        });
    }
});

router.get('/list/instructed', async function(req:Request, res:Response<DefaultResponse<TaskInfo[]> ,Locals>, next:NextFunction) {
    try{
        if(!res.locals.user){
            throw Error('Unauthorized');
        }
        const tasks = await Task.findAll(
            {
                where: {
                    creatorId: res.locals.user.id,
                    status: TaskStatus.inProgress,
                },
                include: [{ all: true }],
            }
        );

        if(!tasks){
            res.status(404);
            res.send({
                code: 404,
                message: "Task not found",
            });
            return;
        }


        return res.send({
            code: 0,
            result: tasks.map((el) => mapTask(el, res.locals.user!)),
        });
    }
    catch (e:any){
        res.status(500);
        res.send({
            code: 500,
            message: e.toString(),
        });
    }
});

router.get('/list/archive', async function(req:Request, res:Response<DefaultResponse<TaskInfo[]> ,Locals>, next:NextFunction) {
    try{
        if(!res.locals.user){
            throw Error('Unauthorized');
        }
        const tasks = await Task.findAll(
            {
                where: {
                    [Op.or]: [
                        {
                            executorId: res.locals.user.id,
                            status: TaskStatus.completed,
                        },{
                            creatorId: res.locals.user.id,
                            status: TaskStatus.completed,
                        }
                    ]

                },
                include: [{ all: true }],
            }
        );

        if(!tasks){
            res.status(404);
            res.send({
                code: 404,
                message: "Task not found",
            });
            return;
        }


        return res.send({
            code: 0,
            result: tasks.map((el) => mapTask(el, res.locals.user!)),
        });
    }
    catch (e:any){
        res.status(500);
        res.send({
            code: 500,
            message: e.toString(),
        });
    }
});

function mapTask(task:Task, user: User):TaskInfo{
    return {
        actions: getTaskActions(task, user),
        creator: task.creatorId,
        executor: task.executorId ?? undefined,
        createdAt: task.createdAt.toISOString(),
        updatedAt: task.updatedAt.toISOString(),
        title: task.title,
        description: task.description,
        status: task.status,
        image: getImageUrl(task.image),
        id: task.id,
    };
}

function  getTaskActions(task:Task, user: User){
    const actions:TaskActions[] = [];
    if(task.creatorId === user.id){
        actions.push(TaskActions.delete);
    }
    else if(task.executorId === user.id && task.status === TaskStatus.inProgress){
        actions.push(TaskActions.cancel, TaskActions.confirm);
    }
    else if(!task.executorId && task.creatorId !== user.id && task.status === TaskStatus.new){
        actions.push(TaskActions.accept);
    }
    return actions;
}

function getImageUrl(image: String):string{
    return `${config.get("base_url")}/images/${image}`
}

export default router;
