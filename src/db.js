import mysql2 from 'mysql2'
import { DB_DATABASE, DB_HOST, DB_PASSWORD, DB_USER } from './config.js'

export const pool = mysql2.createPool({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_DATABASE
})
