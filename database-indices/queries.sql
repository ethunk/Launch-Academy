-- Find all rows that have an ingredient name of Brussels sprouts.
SELECT * FROM ingredients WHERE name LIKE 'Brussels sprouts';

-- Calculate the total count of rows of ingredients with a name of Brussels sprouts.
SELECT COUNT(*) FROM ingredients WHERE name = 'Brussels sprouts';

-- Find all Brussels sprouts ingredients having a unit type of gallon(s).
SELECT * FROM ingredients WHERE name LIKE 'Brussels sprouts' AND unit = 'gallon(s)';

-- Find all rows that have a unit type of gallon(s), a name of Brussels sprouts or has the letter j in it.
SELECT * FROM ingredients WHERE unit = 'gallon(s)' OR name = 'Brussels sprouts' OR name LIKE '%j%';
