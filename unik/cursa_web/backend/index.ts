import express, { Express } from 'express'
import bodyParser from 'body-parser'
import heroes from './src/router/heroes'
import metas from './src/router/metas'
import cors from 'cors'

const app: Express = express()
const PORT = 1337

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())
app.use(cors())

app.use(heroes)
app.use(metas)

app.listen(PORT, () => {
  console.log(`App listening on port ${PORT}`)
})
