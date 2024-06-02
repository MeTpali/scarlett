const jsdom = require("jsdom");
const fs = require("fs");
const { JSDOM } = jsdom;
global.DOMParser = new JSDOM().window.DOMParser;

async function getHeroes() {
  let heroes = [];

  await fetch("https://www.dotabuff.com/heroes", {
    method: "GET",
  }).then((res) =>
    res.text().then((html) => {
      const parser = new DOMParser();
      const doc = parser.parseFromString(html, "text/html");
      const grid = Array.from(doc.getElementsByClassName("hero-grid"))[0];
      const links = grid.getElementsByTagName("a");
      heroes = Array.from(links).map((link) => link.href.split("/").at(-1));
    })
  );

  return heroes;
}

async function fillInfo(heroes) {
  const results = {};
  let index = 0;

  for await (const hero of heroes) {
    console.log(`getting ${hero} ${index++}`);
    await fetch(`https://www.dotabuff.com/heroes/${hero}/counters`, {
      method: "GET",
    }).then((res) =>
      res.text().then((html) => {
        const parser = new DOMParser();

        const doc = parser.parseFromString(html, "text/html");
        const matchups = Array.from(doc.getElementsByTagName("header"))[2];
        const section = matchups.closest("section");
        let rows = Array.from(section.getElementsByTagName("tr"));
        let tdsMatrix = Array.from(
          rows.map((row) => row.getElementsByTagName("td"))
        );
        const result = tdsMatrix
          .map((tds) => Array.from(tds).map((td) => td.dataset.value))
          .filter((array) => array.length > 0)
          .map((array) => array.filter((arrayElem) => arrayElem !== undefined))
          .map((array) => ({
            name: array[0],
            disadvantage: array[1],
            winRate: array[2],
            matchesPlayed: array[3],
          }));

        results[hero] = result;
      })
    );
  }

  return results;
}

async function parse() {
  const heroes = await getHeroes();
  const result = await fillInfo(heroes);
  fs.writeFileSync("win_rate.json", JSON.stringify({ ...result }));
}

parse();
