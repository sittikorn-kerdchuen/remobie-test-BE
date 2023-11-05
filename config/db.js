const mysql = require('mysql');
const dotenv = require("dotenv");

dotenv.config();

const host = process.env.DB_HOST_NAME;
const user = process.env.DB_USER_NAME;
const password = process.env.DB_PASSWORD;
const database = process.env.DB_DATABASE_NAME;

const db = mysql.createConnection({
    host: host,
    user: user,
    password: password,
    database: database
});

// Connect to the database
db.connect((err) => {
    if (err) {
        console.error('Error connecting to MySQL database :( ');
        return;
    }
    console.log('Connected to MySQL database :)');
});

module.exports = db;
