export interface IHero {
  id: number
  name: string
  icon: string
}

export interface IMeta {
  id: number
  hero1_id: number
  hero2_id: number
  winrate: number
  matches_played: number
  disadvantage: number
}
