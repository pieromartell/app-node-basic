import { Request, Response, Router } from "express";

const router = Router();
/**
 * http: localhost:3002/items
 */
router.get('/', (req: Request,res: Response) =>
    res.send({data: 'Aqui an los modelos'})
)

export {router}