import {Request} from 'express';
import {User} from "../core/database";
export interface DefaultResponse<T>{
    code: number,
    result?: T,
    message?: any,
}

export interface Locals {
    user?:User | null,
}
