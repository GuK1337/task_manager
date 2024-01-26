import config from '../config';
import * as fs from 'fs';
import {
    Table,
    Column,
    Model,
    CreatedAt,
    UpdatedAt,
    HasOne,
    Sequelize,
    HasMany,
    BelongsTo,
    ForeignKey, NotNull, AllowNull, Unique, DataType, Default
} from "sequelize-typescript";

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
    login!: string;

    @CreatedAt
    @Column
    createdAt!: Date;

    @UpdatedAt
    @Column
    updatedAt!: Date;

    @HasMany(() => Task, "creatorId")
    createdTasks!: Task[];

    @HasMany(() => Task, "executorId")
    executedTasks!: Task[];
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
    createdAt!: Date;

    @UpdatedAt
    @Column
    updatedAt!: Date;

    @ForeignKey(() => User)
    @Column
    creatorId!: number;

    @BelongsTo(() => Task, "creatorId")
    creator!: User;

    @ForeignKey(() => User)
    @Column(DataType.INTEGER)
    executorId?: number | null | undefined;

    @BelongsTo(() => Task, "executorId")
    executor?: User;

    @AllowNull(false)
    @Column
    title!: string;

    @AllowNull(false)
    @Column(DataType.TEXT)
    description!: string;

    @Column
    image!: string;

    @Default('new')
    @AllowNull(false)
    @Column(DataType.ENUM(TaskStatus.new, TaskStatus.inProgress, TaskStatus.completed))
    status!: string;

}


sequelize.addModels([User, Task]);

export default sequelize;
module.exports.sequelize = sequelize;
