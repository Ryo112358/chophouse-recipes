DROP TABLE IF EXISTS Dish CASCADE;
DROP TABLE IF EXISTS Menu CASCADE;
DROP TABLE IF EXISTS Ingredient CASCADE;
DROP TABLE IF EXISTS Recipe CASCADE;



CREATE TABLE Dish (
  id					SMALLSERIAL,
  name					VARCHAR,
  price 				NUMERIC(5,2),
  PRIMARY KEY (id)
);

CREATE TABLE Ingredient (
  id					SERIAL,
  name					VARCHAR NOT NULL,
  stock_unit			VARCHAR,
  category				VARCHAR,
  PRIMARY KEY (id)
);

CREATE TABLE Recipe (
  id 					SERIAL,
  dish_id				SMALLINT,
  ingredient_id			SMALLINT,
  ingrediant_quantity	SMALLINT,
  quantity_unit			VARCHAR,
  PRIMARY KEY (id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient (id),
  FOREIGN KEY (dish_id) REFERENCES Dish (id)
);

CREATE TABLE Menu (
  menu_item_id			VARCHAR(5),
  dish_id				SMALLINT NOT NULL,
  dish_description		VARCHAR,
  category				VARCHAR NOT NULL,
  subcategory			VARCHAR,
  PRIMARY KEY (menu_item_id),
  FOREIGN KEY (dish_id) REFERENCES Dish (id)
);



