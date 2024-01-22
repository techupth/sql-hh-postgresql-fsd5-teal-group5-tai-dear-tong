-- Start writing code here

CREATE TABLE users (
  user_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  username VARCHAR ( 225 ) UNIQUE NOT NULL,
  email VARCHAR (225) UNIQUE NOT NULL,
	password  VARCHAR ( 225 ) NOT NULL,
  created_at TIMESTAMPTZ UNIQUE NOT NULL
  
);


CREATE TABLE products (
  product_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  username VARCHAR ( 225 ) NOT NULL,
  description TEXT NULL,
  price NUMERIC(10,2)	NOT NULL,
  created_at TIMESTAMPTZ UNIQUE NOT NULL
  
);

CREATE TABLE categories (
  category_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR ( 225 ) UNIQUE NOT NULL,
  created_at TIMESTAMPTZ UNIQUE NOT NULL
  
);

CREATE TABLE product_categories (
  product_category_id   INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  product_id INT REFERENCES products(product_id) ON DELETE CASCADE,
  category_id INT REFERENCES categories(category_id) ON DELETE CASCADE
);



