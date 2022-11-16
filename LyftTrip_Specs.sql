/* Examine the three tables. */
SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;

/* Simple cross join between riders and cars. */
SELECT riders.first,
  riders.last,
  cars.model
FROM riders,cars;

/* we want to create a Trip Log with the trips and its users. */
SELECT trips.date, 
   trips.pickup, 
   trips.dropoff, 
   trips.type, 
   trips.cost,
   riders.first, 
   riders.last,
   riders.username
FROM trips
LEFT JOIN riders 
  ON trips.rider_id = riders.id;

/* we want to create a link between the trips and the cars used during those trips. */
  SELECT *
  FROM trips 
  JOIN cars
    ON trips.car_id = cars.id; 
/* 
What is the average cost for a trip? */
SELECT * 
FROM riders
UNION 
SELECT *
FROM riders2;

SELECT ROUND(AVG(cost), 2)
FROM trips;

/* Find all the riders who have used Lyft less than 500 times */
SELECT *
FROM riders
WHERE total_trips < 500
UNION 
SELECT * 
FROM riders2
WHERE total_trips < 500;

/* Calculate the number of cars that are active. */
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

/* Find the two cars that have the highest trips_completed */
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
