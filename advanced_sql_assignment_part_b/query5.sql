-- Find the film_title of all films which feature both RALPH CRUZ and WILL WILSON
-- Order the results by film_title in ascending order.
-- Warning: this is a tricky one and while the syntax is all things you know, you have to think a bit oustide the box to figure out how to get a table that shows pairs of actors in movies.

-- Put your query for q5 here.

SELECT film.title As film_title FROM film 
JOIN film_actor f1 ON film.film_id=f1.film_id
JOIN actor a1 ON f1.actor_id=a1.actor_id
JOIN film_actor f2 ON film.film_id=f2.film_id
JOIN actor a2 ON f2.actor_id=a2.actor_id
WHERE (a1.first_name='RALPH' AND a1.last_name='CRUZ')
AND (a2.first_name='WILL' AND a2.last_name='WILSON')
ORDER BY film_title ASC;