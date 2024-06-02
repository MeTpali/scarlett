import express, { Response, Request } from 'express'
import db from '../db'
import metas from '../queries/metas'
const router = express.Router()

router.get('/meta-create', async (req: Request, res: Response) => {
  try {
    const result = await db.query(metas.createMetasTable())
    res.send({ message: 'Table successfully created' })
  } catch {
    res.status(400).send({ message: 'Something went wrong' })
  }
})

router.get('/meta', async (req: Request, res: Response) => {
  try {
    const result = await db.query(
      metas.getMetas(
        +req.params.limit || undefined,
        +req.params.offset || undefined,
        +req.params.hero_id || undefined
      )
    )
    res.status(200).send(result.rows)
  } catch {
    res.status(400).send({ message: 'Something went wrong' })
  }
})

router.get('/meta/:id', async (req: Request, res: Response) => {
  try {
    const result = await db.query(metas.getMetaDetails(+req.params.id))
    if (!result.rows[0]) {
      res.status(404).send({ message: 'Not found' })
    }
    res.status(200).send(result.rows[0])
  } catch {
    res.status(400).send({ message: 'Something went wrong' })
  }
})

router.post('/meta', async (req: Request, res: Response) => {
  try {
    const result = await db.query(metas.createMeta(req.body))
    res.send({ message: `Successfully created ${result.rowCount} items` })
  } catch {
    res.status(400).send({ message: 'Something went wrong' })
  }
})

router.patch('/meta/:id', async (req: Request, res: Response) => {
  try {
    const result = await db.query(metas.updateMeta(+req.params.id, req.body))
    res.send({ message: `Successfully updated ${result.rowCount} items` })
  } catch {
    res.status(400).send({ message: 'Something went wrong' })
  }
})

router.delete('/meta/:id', async (req: Request, res: Response) => {
  try {
    const result = await db.query(metas.deleteMeta(+req.params.id))
    res.send({ message: `Successfully deleted ${result.rowCount} items` })
  } catch {
    res.status(400).send({ message: 'Something went wrong' })
  }
})

export default router
