use internship;

SELECT model_year, AVG(price) AS average_price
FROM bikes
GROUP BY model_year
ORDER BY model_year;

SELECT model_name, price
FROM bikes
ORDER BY price DESC
LIMIT 5;

SELECT owner, AVG(km_driven) AS avg_km_driven
FROM bikes
GROUP BY owner
ORDER BY owner;

SELECT location, COUNT(*) AS number_of_bikes
FROM bikes
GROUP BY location
ORDER BY number_of_bikes DESC;

SELECT location, MIN(price) AS min_price, MAX(price) AS max_price, AVG(price) AS avg_price
FROM bikes
GROUP BY location;

SELECT model_name, power
FROM bikes
WHERE power > (SELECT AVG(power) FROM bikes);

SELECT mileage, COUNT(*) AS count
FROM bikes
GROUP BY mileage
ORDER BY count DESC;

SELECT owner, AVG(price) AS average_price
FROM bikes
GROUP BY owner;

SELECT model_year, AVG(km_driven) AS avg_km_driven
FROM bikes
GROUP BY model_year
HAVING avg_km_driven < (SELECT AVG(km_driven) FROM bikes);

SELECT model_name, mileage, price
FROM bikes
WHERE mileage > 50 AND price < (SELECT AVG(price) FROM bikes);









