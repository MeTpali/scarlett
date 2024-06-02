import { IHero } from '../types'

const createHeroesTable = () => {
  return `
    CREATE TABLE heroes (
      id SERIAL PRIMARY KEY,
      name VARCHAR(100),
      icon VARCHAR(200)
    );`
}

const getHeroes = (limit?: number, offset?: number) => {
  let query = `SELECT * FROM heroes`
  if (limit !== undefined) query += ` LIMIT ${limit}`
  if (offset !== undefined) query += ` OFFSET ${offset}`
  return query
}

const getHeroDetails = (id: number) => {
  return `SELECT * FROM heroes WHERE id = ${id}`
}

const createHero = (hero: Omit<IHero, 'id'>) => {
  const query = `
    INSERT INTO heroes (name, icon)
    VALUES (
      '${hero.name}',
      '${hero.icon}'
    )`
  return query
}

const updateHero = (id: number, hero: Partial<Omit<IHero, 'id'>>) => {
  const keysCount = Object.keys(hero).length
  if (keysCount <= 0) return ''
  let query = 'UPDATE heroes SET'
  for (const key of Object.keys(hero)) {
    // @ts-ignore
    query += ` ${key} = '${hero[key]}',`
  }
  query = query.substring(0, query.length - 1)
  query += ` WHERE id = ${id}`
  return query
}

const deleteHero = (id: number) => {
  return `DELETE FROM heroes WHERE id = ${id}`
}

export default {
  createHeroesTable,
  getHeroes,
  getHeroDetails,
  createHero,
  updateHero,
  deleteHero,
}
