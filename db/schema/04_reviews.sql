
DROP TABLE IF EXISTS reviews CASCADE;
CREATE TABLE reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  customer_id INTEGER REFERENCES customers(id) ON DELETE CASCADE,
  message TEXT NOT NULL,
  rating INTEGER,
  date TIMESTAMP NOT NULL
);