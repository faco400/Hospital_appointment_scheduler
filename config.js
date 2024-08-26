require("dotenv").config();

const config = {
  db: {
    host: process.env.DBHOST,
    user: process.env.DBUSER,
    password: process.env.DBPASS,
    database: process.env.DBNAME,
    connectTimeout: 60000
  },
  listPerPage: 10,
};
module.exports = config;