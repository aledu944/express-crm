import express from "express";
import dotenv from 'dotenv'

dotenv.config();

const app = express();
app.use(express.json()) // permite recibir req.body en json

// app.use('/api', AppRoutes )

app.listen(process.env.PORT, () => {
    console.log(`Server listening on ${process.env.PORT}`)
})
