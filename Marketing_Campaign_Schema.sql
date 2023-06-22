/* Dave's Burgers is thriving and now they're planning an exciting marketing campaign 
for their expansion. The marketing team has tasked us with finding a funny or interesting note 
left on an order in the 'special_instructions' tab to be used in the campaign
*/

-- Query 1: Retrieve all columns from the first 10 rows in the orders table
SELECT *
FROM orders
LIMIT 10;

-- Query 2: Identify the most recent order date
SELECT DISTINCT order_date
FROM orders
ORDER BY order_date DESC;

-- Query 3: Retrieve special instructions from the first 20 orders
SELECT special_instructions
FROM orders
LIMIT 20;

-- Query 4: Retrieve non-empty special instructions
SELECT special_instructions
FROM orders
WHERE special_instructions IS NOT NULL;

-- Query 5: Retrieve non-empty special instructions and sort them alphabetically
SELECT special_instructions
FROM orders
WHERE special_instructions IS NOT NULL
ORDER BY special_instructions ASC;

-- Query 6: Retrieve special instructions containing the word 'sauce'
SELECT special_instructions
FROM orders
WHERE special_instructions LIKE '%sauce%';

-- Query 7: Retrieve special instructions containing the word 'door'
SELECT special_instructions
FROM orders
WHERE special_instructions LIKE '%door%';

-- Query 8: Retrieve special instructions containing the word 'box'
SELECT special_instructions
FROM orders
WHERE special_instructions LIKE '%box%';

-- Query 9: Retrieve order IDs and corresponding special instructions containing the word 'box'
-- The returned columns are renamed for readability
SELECT id AS '#',
   special_instructions AS 'Notes'
FROM orders
WHERE special_instructions LIKE '%box%';

-- Query 10: Retrieve information related to a specific special instruction
SELECT item_name, restaurant_id, user_id
FROM orders
WHERE special_instructions = 'Draw a narwhal on the delivery box.';
