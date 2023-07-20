import { Request, Response } from "express"
import handLeHTTP from "../utils/error.handle";

export const getKeyBoard = (req: Request, res:Response) =>{
    try {
        
    } catch (error) {
        handLeHTTP(res, 'Error_GET_ITEM');
    }
}
export const getKeyBoards = (req: Request, res:Response) =>{
try {
        
    } catch (error) {
        handLeHTTP(res, 'Error_GET_ITEMS');
        
    }
}
export const postKeyBoard = (req: Request, res:Response) =>{
    try {
        
    } catch (error) {
        handLeHTTP(res, 'Error_POST_ITEMS');
        
    }
}

export const updateKeyBoard = (req: Request, res:Response)=>{
try {
        
    } catch (error) {
        handLeHTTP(res, 'Error_PUT_ITEMS');
        
    }
}
export const deleteKeyBoard = (req: Request, res:Response)=>{try {
        
    } catch (error) {
        handLeHTTP(res, 'Error_DELETE_ITEMS');
        
    }
}


