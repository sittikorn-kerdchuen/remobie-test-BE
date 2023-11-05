const express = require('express');
const cors = require('cors')
const morgan = require('morgan')
const dotenv = require("dotenv");
const product= require('./routes/product.js')
const app = express()

dotenv.config();
const port = process.env.PORT

// use midleware
app.use(cors());
app.use(morgan('dev'))
app.use(express.json());
// app.use(express.urlencoded());


// router
app.use('/',product)



// run server
app.listen(port,()=>{
    console.log(`Server is running on localhost in port :>> ${port} `);
    console.log(`http://localhost:${port}`)
})
