import fs from 'node:fs/promises'
import path from 'node:path'
import { pool } from './db.js'

export const index = async (req, res) => {
  try {
    const pathToFile = path.resolve('./public/index.html')
    const html = await fs.readFile(pathToFile, 'utf-8')

    res.writeHead(200, { 'Content-Type': 'text/html' })
    res.end(html)
  } catch (error) {
    console.log(error)
    const pathToFile500 = path.resolve('./public/500.html')
    const html500 = await fs.readFile(pathToFile500, 'utf-8')

    res.writeHead(500, { 'Content-Type': 'text/html' })
    res.end(html500)
  }
}

export const importFn = async (req, res) => {
  try {
    // Ruta al archivo data.csv
    const pathToCsv = path.resolve('./data.csv')

    // Leer la data del archivo CSV y guardarla en un array de objetos
    const csv = await fs.readFile(pathToCsv, 'utf-8')
    const csvData = csv.split('\n')

    // Quitar la cabecera del CSV y el último elemento vacío (si existe)
    csvData.shift()
    const ultimoElemento = csvData[csvData.length - 1]
    if (ultimoElemento === '') {
      csvData.pop()
    }

    // Iterar cada fila de la data e insertarla en la tabla users de la base de datos.
    for (const row of csvData) {
      const data = row.split(',')

      const correo = data[2]
      const isCorreo = correo.includes('@')
      if (!isCorreo) continue

      const query = 'INSERT INTO users(id, nombre, email, password, fecha_nacimiento) VALUES (?, ?, ?, ?, ?)'
      pool.execute(query, data)
    }

    res.writeHead(200, { 'Content-Type': 'application/json' })
    res.end(JSON.stringify({ message: 'Data imported successfully' }))
  } catch (error) {
    console.log(error)
    res.writeHead(500, { 'Content-Type': 'application/json' })
    res.end(JSON.stringify({ message: 'Internal server error' }))
  }
}

export const getUsers = async (req, res) => {
  try {
    const [rows] = await pool.query('SELECT * FROM users')

    res.writeHead(200, { 'Content-Type': 'application/json' })
    res.end(JSON.stringify(rows))
  } catch (error) {
    console.log(error)
    res.writeHead(500, { 'Content-Type': 'application/json' })
    res.end(JSON.stringify({ message: 'Internal server error' }))
  }
}
