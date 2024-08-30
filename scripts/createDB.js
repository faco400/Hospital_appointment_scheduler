const config = require('../config');
const mysql = require('mysql2/promise');
const fs = require('fs');
const path = require('path');

async function createDB() {
  const sqlPath = path.join(__dirname, 'createDB.sql');
  const sql = fs.readFileSync(sqlPath, 'utf8');

  try {
    // Connect without specifying the database to create it
    const connection = await mysql.createConnection(config.db);

    // Execute the SQL script
    const statements = sql.split(';').map(stmt => stmt.trim()).filter(stmt => stmt.length);
    for (const statement of statements) {
      await connection.query(statement);
      console.log(`Executed: ${statement.substring(0, 30)}...`);
    }

    console.log('Database and tables created successfully.');
    await connection.end();
  } catch (error) {
    console.error('Error creating database:', error);
  }
}

createDB();