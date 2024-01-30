import * as fs from 'fs';
import {
    Table,
    Column,
    Model,
    CreatedAt,
    UpdatedAt,
    Sequelize,
    HasMany,
    BelongsTo,
    HasOne,
    ForeignKey, AllowNull, Unique, DataType, Default,
} from "sequelize-typescript";
import {NonAttribute} from "sequelize";

const {
    POSTGRES_HOST: HOST,
    POSTGRES_HOST_FILE: HOST_FILE,
    POSTGRES_USER: USER,
    POSTGRES_USER_FILE: USER_FILE,
    POSTGRES_PASSWORD: PASSWORD,
    POSTGRES_PASSWORD_FILE: PASSWORD_FILE,
    POSTGRES_DB: DB,
    POSTGRES_DB_FILE: DB_FILE,
} = process.env;

const host = HOST_FILE ? fs.readFileSync(HOST_FILE).toString() : HOST;
const user = USER_FILE ? fs.readFileSync(USER_FILE).toString() : USER;
const password = PASSWORD_FILE ? fs.readFileSync(PASSWORD_FILE, 'utf8') : PASSWORD;
const database = DB_FILE ? fs.readFileSync(DB_FILE).toString() : DB;

  const sequelize = new Sequelize({
    "host": host,
    "port": 5432,
    "database": database,
    "username": user,
    "password": password,
    "dialect": "postgres",
  });

@Table
export class User extends Model {
    @Unique
    @AllowNull(false)
    @Column
    declare login: string;

    @Column
    declare passwordHash: string;

    @Column
    declare username: string;

    @CreatedAt
    @Column
    declare createdAt: Date;

    @UpdatedAt
    @Column
    declare updatedAt: Date;

    @HasMany(() => Task, "creatorId")
    declare createdTasks: Task[];

    @HasMany(() => Task, "executorId")
    declare executedTasks: Task[];
}

export enum TaskStatus{
    new = 'new',
    inProgress = 'inProgress',
    completed =  'completed',
}
@Table
export class Task extends Model {
    @CreatedAt
    @Column
    declare createdAt: Date;

    @UpdatedAt
    @Column
    declare updatedAt: Date;

    @ForeignKey(() => User)
    @Column
    declare creatorId: number;

    @BelongsTo(() => User, "creatorId")
    declare creator: User;

    @ForeignKey(() => User)
    @Column(DataType.INTEGER)
    declare executorId: number | null | undefined;

    @BelongsTo(() => User, "executorId")
    declare executor: User | null | undefined;

    @AllowNull(false)
    @Column
    declare title: string;

    @AllowNull(false)
    @Column(DataType.TEXT)
    declare description: string;

    @Column(DataType.ARRAY(DataType.STRING))
    declare images: string[];

    @Default('new')
    @AllowNull(false)
    @Column(DataType.ENUM(TaskStatus.new, TaskStatus.inProgress, TaskStatus.completed))
    declare status: string;

    @HasOne(() => TaskResult, 'taskId')
    declare result?: NonAttribute<TaskResult>;
}

@Table
export class TaskResult extends Model {
    @CreatedAt
    @Column
    declare createdAt: Date;

    @UpdatedAt
    @Column
    declare updatedAt: Date;

    @AllowNull(false)
    @Column(DataType.TEXT)
    declare description: string;

    @Column(DataType.ARRAY(DataType.STRING))
    declare images: string[];


    @ForeignKey(() => Task)
    @Column
    declare taskId: number;

    @BelongsTo(() => Task, {
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
    })
    declare task: Task;
}


sequelize.addModels([User,TaskResult, Task,]);

export default sequelize;
module.exports.sequelize = sequelize;
