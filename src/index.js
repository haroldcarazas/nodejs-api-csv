import http from 'node:http'
import { PORT } from './config.js'
import { getUsers, importFn, index } from './library.js'

const server = http.createServer((req, res) => {
  // CORS
  const allowedOrigins = ['http://127.0.0.1:5500', 'https://funval.com'] // dominios permitidos
  const origin = req.headers.origin // dominio del que viene la petición

  if (origin !== null && allowedOrigins.includes(origin)) {
    res.setHeader('Access-Control-Allow-Origin', origin)
  }

  const { method, url } = req

  if (method === 'GET') {
    switch (url) {
      case '/':{
        index(req, res)
        break
      }

      case '/users': {
        getUsers(req, res)
        break
      }

      case '/import': {
        importFn(req, res)
        break
      }

      default: {
        res.writeHead(404, { 'Content-Type': 'application/json' })
        res.end(JSON.stringify({ message: 'Not found' }))
        break
      }
    }
  }
})

server.listen(PORT, () => console.log(`Server running on: http://localhost:${PORT}`))
