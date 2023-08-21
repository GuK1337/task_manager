import config from '../config';
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


const sequelize = new Sequelize(config.get('pg'));

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
