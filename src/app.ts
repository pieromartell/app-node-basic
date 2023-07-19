import "dotenv/config";
import  express  from "express";
import cors from "cors";
import { router } from "./routes/";

import db from "./config/mysql";

const app = express();
const PORT = process.env.PORT || 3001
app.use(cors());
app.use(router);
db().then( () =>console.log('Conectado a la base de datos'))
.catch( (err) => console.log(err))

app.listen(PORT, () =>{
    console.log(`Listo en el Puerto ${PORT}`)
})