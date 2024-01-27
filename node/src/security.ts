import {NextFunction, Request, Response} from "express";
import jwt from "jsonwebtoken";
import config from "./config";
import {Locals} from "./types/response";
import {User} from "./core/database";

export const  checkAccess = async function (req: Request, res: Response<any ,Locals>, next:NextFunction)  {
    try{
        let token;
        if (req.body.method !== 'Auth') {
            token = req.body.token
                || req.query.token
                || req.headers['x-access-token'];
        }
        if (token) {
            try {
                const userData = jwt.verify(token, config.get("jwt_secret")) as User;
                res.locals.user = await User.findByPk(userData.id);
                next();
                return;
            } catch (error) {
                res.status(403);
                res.send({
                    code: 403,
                    message: "Not Allowed",
                });
            }
        }

        if(req.originalUrl.includes('users/auth') || req.originalUrl.includes('images') || req.originalUrl.includes('users/register')){
            next();
            return;
        }
        res.status(403);
        res.send({
            code: 403,
            message: "Not Allowed",
        });
    }
    catch (e){
        res.status(403);
        res.send({
            code: 403,
            message: "Not Allowed",
        });
    }
}