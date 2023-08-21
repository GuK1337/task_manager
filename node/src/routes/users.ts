import {Request, Response, NextFunction, Router} from 'express';
import jwt from "jsonwebtoken";
import { User } from "../core/database";
import config from '../config';
import {DefaultResponse, Locals} from "../types/response";

const router = Router();

interface AuthResponseBody{
  login: string,
  token: string,
  id: number,
}

/* GET users listing. */
router.post('/auth', async function(req:Request, res:Response<DefaultResponse<AuthResponseBody> ,Locals>, next:NextFunction) {
  try{
    // const  user = await User.create({login: req.body.login});
    // const  users = await User.findAll();
    let user = await User?.findOne({ where: { login: req.body.login } });
    if(!user){
      user = await User.create({login: req.body.login});
    }
    const result = {id: user.id, login: user.login };

    await user!.save();
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


interface InfoResponseBody{
  login: string,
  id: number,
}

/* GET users listing. */
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
