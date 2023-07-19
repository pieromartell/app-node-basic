import { Router } from "express";
import {readdirSync} from 'fs'

const PATH_ROUTER = `${__dirname}`

/**
 * 
 * @param fileName 
 * @returns 
 */
const cleanFileName = (fileName: string)=>{
    const file = fileName.split('.').shift()
    return file
}

readdirSync(PATH_ROUTER).filter((filename) =>{
    const cleanName = cleanFileName(filename)

    if (cleanName !=='index') {
        
        import (`./${cleanName}`).then((moduleRouter)=>{
            console.log(`Se esta cargando la ruta ... ${cleanName}`)
            router.use(`./${cleanName}`,moduleRouter.router)
        })

        
        console.log(cleanName)
    }
})

const router = Router();

export {router}
