import { IMeta } from '../types'

const createMetasTable = () => {
  return `
    CREATE TABLE metas (
      id SERIAL PRIMARY KEY,
      winrate DECIMAL(10, 6),
      matches_played INTEGER,
      disadvantage DECIMAL(10, 6),
      hero1_id INTEGER,
      FOREIGN KEY (hero1_id) REFERENCES heroes (id) ON DELETE CASCADE,
      hero2_id INTEGER,
      FOREIGN KEY (hero2_id) REFERENCES heroes (id) ON DELETE CASCADE
    );`
}

const getMetas = (limit?: number, offset?: number, hero_id?: number) => {
  let query = `SELECT * FROM metas`
  if (hero_id !== undefined) query += ` WHERE hero1_id = ${hero_id}`
  if (limit !== undefined) query += ` LIMIT ${limit}`
  if (offset !== undefined) query += ` OFFSET ${offset}`
  return query
}

const getMetaDetails = (id: number) => {
  return `SELECT * FROM metas WHERE id = ${id}`
}

const createMeta = (meta: Omit<IMeta, 'id'>) => {
  const query = `
    INSERT INTO metas (winrate, matches_played, disadvantage, hero1_id, hero2_id)
    VALUES (
      ${meta.winrate},
      ${meta.matches_played},
      ${meta.disadvantage},
      ${meta.hero1_id},
      ${meta.hero2_id}
    )`
  return query
}

const updateMeta = (id: number, meta: Partial<Omit<IMeta, 'id'>>) => {
  const keysCount = Object.keys(meta).length
  if (keysCount <= 0) return ''
  let query = 'UPDATE metas SET'
  for (const key of Object.keys(meta)) {
    // @ts-ignore
    query += ` ${key} = '${meta[key]}',`
  }
  query = query.substring(0, query.length - 1)
  query += ` WHERE id = ${id}`
  return query
}

const deleteMeta = (id: number) => {
  return `DELETE FROM metas WHERE id = ${id}`
}

export default {
  createMetasTable,
  getMetas,
  getMetaDetails,
  createMeta,
  updateMeta,
  deleteMeta,
}
