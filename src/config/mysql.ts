import dotenv from "dotenv";
import mysql from 'mysql2'

dotenv.config();

const database = () =>{
    return new Promise ((res, rej) =>{
        const con = mysql.createConnection({
            host: process.env.HOST,
            user: process.env.USER,
            password: process.env.PASSWORD,
            database: process.env.DATABASE,
            
        });
        con.connect((err) =>{
            if(err){
                rej(err)
                return
            }

            res(con)
        })
    })
}

export default database;

