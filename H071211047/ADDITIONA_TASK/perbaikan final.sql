USE saqila_db;

-- no 15c 
SELECT f.title AS `Movies similiar to Pulp Beverly`
FROM category AS c
JOIN film_category AS fc
USING(category_id)
JOIN film AS f
USING(film_id)
JOIN film_actor AS fa
USING(film_id)
JOIN actor AS a
USING(actor_id)
WHERE c.name = 'Horror' AND
concat(a.first_name, ' ', a.last_name) = 'KIRSTEN PALTROW' | 'DUSTIN TAUTOU' | 'SUSAN DAVIS' | 'WARREN NOLTE' | 'GRETA KEITEL' | 'WHOOPI HURT' | 'ANGELA WITHERSPOON'
GROUP BY f.title;

-- no 8a
SELECT c.name, f.title
FROM category AS c
JOIN film_category AS fc
USING(category_id)
JOIN film AS f
USING(film_id)
WHERE LEFT(f.title, 1) IN ('A', 'I', 'U', 'E', 'O')
ORDER BY RIGHT(f.title, 2) ASC;