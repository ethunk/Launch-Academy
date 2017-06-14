# Database Indices Challenge
###### By Teddy Stanowski :sunglasses:
---

1. Find all rows that have an ingredient name of Brussels sprouts.

    `SELECT * FROM ingredients WHERE name LIKE 'Brussels sprouts';`

    `CREATE INDEX ON ingredients(name);`

  ![Part 1](http://imgur.com/a/pMCdA)

2. Calculate the total count of rows of ingredients with a name of Brussels sprouts.

    `SELECT COUNT(*) FROM ingredients WHERE name = 'Brussels sprouts';`

    `CREATE INDEX ON ingredients(name);`

  ![Part 2](http://imgur.com/a/3iXIw)

3. Find all Brussels sprouts ingredients having a unit type of gallon(s).
    `SELECT * FROM ingredients WHERE name LIKE 'Brussels sprouts' AND unit = 'gallon(s)';`

    `CREATE INDEX ON ingredients(name, unit);`

  ![Part 3](http://imgur.com/a/1BhPT)

4. Find all rows that have a unit type of gallon(s), a name of Brussels sprouts or has the letter j in it.

    `SELECT * FROM ingredients WHERE unit = 'gallon(s)' OR name = 'Brussels sprouts' OR name LIKE '%j%';`

    `CREATE INDEX ON ingredients(name, unit);`

  ![Part 4](http://imgur.com/a/M5Zit)
