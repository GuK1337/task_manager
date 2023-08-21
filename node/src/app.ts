import createError from 'http-errors';
import express, {Request, Response, NextFunction, } from 'express';
import path from 'path';
import cookieParser from 'cookie-parser';
import logger from 'morgan';
import indexRouter from './routes';
import usersRouter from './routes/users';
import tasksRouter from './routes/tasks';
import {CommonError} from "./types/error";
import * as security from "./security";
import * as process from "process";

const app = express();


app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(process.cwd(), 'public')));
app.use(security.checkAccess);

app.use('/', indexRouter);
app.use('/api/users', usersRouter);
app.use('/api/tasks', tasksRouter);

// catch 404 and forward to error handler
app.use(function(req: Request, res: Response, next:NextFunction) {
  res.status(404);
  res.send({
    message: 'Not found',
    code: 404,
  });
});

// error handler
app.use(function(err: any, req: Request, res: Response, next:NextFunction) {
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  res.status(err.status ?? 500);
  res.send({
    code: err.status ?? 500,
    message: err.message ?? '',
  });
});

module.exports = app;
