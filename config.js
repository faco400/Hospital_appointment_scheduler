require("dotenv").config();

const config = {
  db: {
    host: process.env.DBHOST, //"db4free.net",
    user: process.env.DBUSER,//"root",
    password: process.env.DBPASS,//"#Espertalhao400",
    database: process.env.DBNAME,//"apiresttest123",
    connectTimeout: 60000
  },
  listPerPage: 10,
};
module.exports = config;