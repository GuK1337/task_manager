import {Request, Response, NextFunction, Router} from 'express';
import sequelize from "../core/database";
const router = Router();

/* GET home page. */
router.get('/', async function(req:Request, res:Response, next:NextFunction):Promise<void> {
  try{
    await sequelize.authenticate();
    res.send('respond with a resource');
  }
  catch (e: any){
    res.status(500);
    res.send({
      code: 500,
      message: e.toString(),
    });
  }
});

export default router;


