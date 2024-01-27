import {Request, Response, NextFunction, Router} from 'express';
import jwt from "jsonwebtoken";
import { User } from "../core/database";
import config from '../config';
import {DefaultResponse, Locals} from "../types/response";
import * as bcrypt from  "bcryptjs";

const router = Router();

interface AuthResponseBody{
  login: string,
  token: string,
  id: number,
}

interface InfoResponseBody{
  login: string,
  id: number,
}

interface RegisterReuest extends Request{
  body:{
    login: string,
    username: string,
    password: string,
  }
}

router.post('/auth', async function(req:Request, res:Response<DefaultResponse<AuthResponseBody> ,Locals>, next:NextFunction) {
  try{
    let user = await User?.findOne({ where: { login: req.body.login,} });
    if(!user || !(await bcrypt.compare(req.body.password, user.passwordHash))){
      res.status(401);
      res.send({
        code: 401,
        message: 'Wrong login or password',
      });
      return;
    }
    const result = {id: user.id, login: user.login };
    return res.send({
      code: 0,
      result: {
        ...result,
        token: jwt.sign(result, config.get("jwt_secret")),
      },
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

router.post('/register', async function(req:RegisterReuest, res:Response<DefaultResponse<AuthResponseBody> ,Locals>, next:NextFunction) {
  try{
    if(!req.body.login || !req.body.password || !req.body.username){
      res.status(400);
      return res.send({
        code: 400,
        message: 'Wrong arguments',
      });
    }

    let userCount = await User?.count({ where: { login: req.body.login } });
    if(userCount != 0){
      res.status(400);
      return res.send({
        code: 400,
        message: "User already exist",
      });
    }
    const user = await User.create({
      login: req.body.login,
      passwordHash: await bcrypt.hash(req.body.password, 8),
      username: req.body.username,
    });

    const result = {id: user.id, login: user.login };
    return res.send({
      code: 0,
      result: {
        ...result,
        token: jwt.sign(result, config.get("jwt_secret")),
      },
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

router.get('/info', async function(req:Request, res:Response<DefaultResponse<InfoResponseBody> ,Locals>, next:NextFunction) {
  try{
    // const  user = await User.create({login: req.body.login});
    // const  users = await User.findAll();
    let user = await User!.findByPk(res.locals.user?.id);
    if(!user){
      res.status(404);
      res.send({
        code: 404,
        message: "User not found",
      });
      return;
    }
    const result = {id: user.id, login: user.login };

    await user!.save();
    return res.send({
      code: 0,
      result: result,
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

export default router;
