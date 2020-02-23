-- #-----------------------------------------------------------------------
-- # |                            MENU                                    |
-- #-----------------------------------------------------------------------

INSERT INTO Menu (dish_name, menu_item_id, category)
	VALUES ('Palak Paneer', 'V1', 'Vegetarian');
INSERT INTO Menu (dish_name, menu_item_id, category, subcategory)
	VALUES ('Punjabi Chicken', 'C1', 'Curry', 'Chicken');
	
	

-- #-----------------------------------------------------------------------
-- # |                         INGREDIENT                                 |
-- #-----------------------------------------------------------------------

INSERT INTO Ingredient(name,category) VALUES ('olive oil','oil');
INSERT INTO Ingredient(name,category) VALUES ('garlic cloves',NULL);
INSERT INTO Ingredient(name,category) VALUES ('ginger root',NULL);
INSERT INTO Ingredient(name,category) VALUES ('red chile peppers, dried',NULL);
INSERT INTO Ingredient(name,category) VALUES ('onion, finely chopped',NULL);
INSERT INTO Ingredient(name,category) VALUES ('cumin, ground','seasoning');
INSERT INTO Ingredient(name,category) VALUES ('coriander, ground','seasoning');
INSERT INTO Ingredient(name,category) VALUES ('turmeric, ground','seasoning');
INSERT INTO Ingredient(name,category) VALUES ('sour cream',NULL);
INSERT INTO Ingredient(name,category) VALUES ('spinach',NULL);
INSERT INTO Ingredient(name,category) VALUES ('tomato, large',NULL);
INSERT INTO Ingredient(name,category) VALUES ('cilantro leaves, sprigs',NULL);
INSERT INTO Ingredient(name,category) VALUES ('paneer','dairy');
INSERT INTO Ingredient(name,category) VALUES ('sea salt, coarse','seasoning');

INSERT INTO Ingredient(name,category) VALUES ('vegetable oil','oil');
INSERT INTO Ingredient(name,category) VALUES ('desi ghee',NULL);
INSERT INTO Ingredient(name,category) VALUES ('chicken leg, skinless',NULL);
INSERT INTO Ingredient(name,category) VALUES ('cumin seeds',NULL);
INSERT INTO Ingredient(name,category) VALUES ('tomato, small',NULL);
INSERT INTO Ingredient(name,category) VALUES ('tomato paste',NULL);
INSERT INTO Ingredient(name,category) VALUES ('garam masala','seasoning');
INSERT INTO Ingredient(name,category) VALUES ('salt','seasoning');
INSERT INTO Ingredient(name,category) VALUES ('serrano chile pepper, seeded',NULL);
INSERT INTO Ingredient(name,category) VALUES ('cilantro leaves, chopped',NULL);



-- #-----------------------------------------------------------------------
-- # |                           RECIPE                                   |
-- #-----------------------------------------------------------------------

-- Palak Paneer

INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','1','6','tbsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','2','2','NA');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','3','1','tbsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','4','2','NA');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','5','0.5','cups');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','6','2','tsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','7','1','tsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','8','1','tsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','9','0.75','cups');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','10','3','lbs');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','11','1','NA');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','12','4','sprigs');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','13','8','oz');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('1','14','1','tsp');

-- Punjabi Chicken

INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','15','2','tbsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','16','2','tbsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','17','8','legs');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','18','1','tsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','5','1','NA');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','2','5','NA');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','3','2','tbsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','19','1','NA');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','20','1','tbsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','21','1','tbsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','8','1','tbsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','22','1','tsp');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','23','1','NA');
INSERT INTO Recipe(dish_id,ingredient_id,ingredient_quantity,quantity_unit) VALUES ('2','24','0.25','cups');