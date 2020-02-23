DROP TABLE IF EXISTS Menu CASCADE;
DROP TABLE IF EXISTS Ingredient CASCADE;
DROP TABLE IF EXISTS Recipe CASCADE;



CREATE TABLE Menu (
  dish_id					SMALLSERIAL,
  dish_name					TEXT NOT NULL,
  dish_description			TEXT,
  menu_item_id				VARCHAR(5) UNIQUE,
  category					TEXT NOT NULL,
  subcategory				TEXT,
  price_rupees				NUMERIC(4,0),
  active					BOOLEAN NOT NULL DEFAULT TRUE,
  PRIMARY KEY (dish_id)
);

CREATE TABLE Ingredient (
  id						SERIAL,
  name						TEXT UNIQUE NOT NULL,
  stock_measurement_unit	TEXT,
  category					TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE Recipe (
  dish_id					SMALLINT,
  ingredient_id				INTEGER,
  ingredient_quantity		NUMERIC(6,2) NOT NULL,
  quantity_unit				TEXT NOT NULL,
  PRIMARY KEY (dish_id, ingredient_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient (id),
  FOREIGN KEY (dish_id) REFERENCES Menu (dish_id)
);


