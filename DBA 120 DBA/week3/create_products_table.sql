DROP table if exists products;

CREATE TABLE products (
  product_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  description VARCHAR(50) NOT NULL,
  UOM CHAR(5) NOT NULL,
  on_hand INT NOT NULL,
  unit_price DECIMAL(7, 2) NOT NULL);