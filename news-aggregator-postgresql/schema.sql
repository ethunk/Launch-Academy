-- If you want to run this schema repeatedly you'll need to drop
-- the table before re-creating it. Note that you'll lose any
-- data if you drop and add a table:

-- DROP TABLE IF EXISTS articles;

-- Define your schema here:

CREATE TABLE articles (
  title VARCHAR(300) NOT NULL,
  description VARCHAR(500) NOT NULL,
  url VARCHAR(1000) NOT NULL
);
