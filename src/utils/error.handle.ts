import { Response } from "express";

const handLeHTTP = (res:Response, error:String) =>{
    res.status(500)
    res.send(error)
}

export default handLeHTTP;