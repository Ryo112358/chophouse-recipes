SELECT * FROM Menu;
SELECT * FROM Ingredient;
SELECT * FROM Recipe;

SELECT
	m.dish_name,
	i.name,
	r.ingredient_quantity,
	r.quantity_unit
FROM Recipe r
	LEFT JOIN Menu m ON r.dish_id = m.dish_id
	LEFT JOIN Ingredient i ON r.ingredient_id = i.id
WHERE r.dish_id = 1;