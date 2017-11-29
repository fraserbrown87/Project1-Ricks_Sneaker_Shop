DROP TABLE IF EXISTS models;
DROP TABLE IF EXISTS brands;

CREATE TABLE brands (
  id SERIAL4 PRIMARY KEY,
  brand_name VARCHAR(255)
);

CREATE TABLE models (
  id SERIAL4 PRIMARY KEY,
  model_name VARCHAR(255),
  brand_id INT4 REFERENCES brands(id),
  quantity INT2,
  style VARCHAR(255),
  buy_price NUMERIC,
  sell_price NUMERIC
);
