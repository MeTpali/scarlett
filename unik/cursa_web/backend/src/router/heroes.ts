import express, { Response, Request } from 'express'
import db from '../db'
import heroes from '../queries/heroes'
const router = express.Router()

router.get('/heroes-create', async (req: Request, res: Response) => {
  try {
    const result = await db.query(heroes.createHeroesTable())
    res.send({ message: 'Table successfully created' })
  } catch {
    res.status(400).send({ message: 'Something went wrong' })
  }
})

router.get('/heroes', async (req: Request, res: Response) => {
  try {
    const result = await db.query(heroes.getHeroes())
    res.status(200).send(result.rows)
  } catch {
    res.status(400).send({ message: 'Something went wrong' })
  }
})

router.get('/heroes/:id', async (req: Request, res: Response) => {
  try {
    const result = await db.query(heroes.getHeroDetails(+req.params.id))
    if (!result.rows[0]) {
      res.status(404).send({ message: 'Not found' })
    }
    res.status(200).send(result.rows[0])
  } catch {
    res.status(400).send({ message: 'Something went wrong' })
  }
})

router.post('/heroes', async (req: Request, res: Response) => {
  try {
    const result = await db.query(heroes.createHero(req.body))
    res.send({ message: `Successfully created ${result.rowCount} items` })
  } catch {
    res.status(400).send({ message: 'Something went wrong' })
  }
})

router.patch('/heroes/:id', async (req: Request, res: Response) => {
  try {
    const result = await db.query(heroes.updateHero(+req.params.id, req.body))
    res.send({ message: `Successfully updated ${result.rowCount} items` })
  } catch {
    res.status(400).send({ message: 'Something went wrong' })
  }
})

router.delete('/heroes/:id', async (req: Request, res: Response) => {
  try {
    const result = await db.query(heroes.deleteHero(+req.params.id))
    res.send({ message: `Successfully deleted ${result.rowCount} items` })
  } catch {
    res.status(400).send({ message: 'Something went wrong' })
  }
})

export default router
