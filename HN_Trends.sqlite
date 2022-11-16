/* Let’s find the most popular Hacker News stories: */
SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

/* Find the total score of all the stories */
SELECT SUM(score)
FROM hacker_news;

/* We need to pinpoint the users who have accumulated a lot of points across their stories. */
SELECT user, SUM(score)
FROM hacker_news
GROUP BY user
HAVING SUM(score) > 200
ORDER BY 2 DESC;

/* Then, we want to add these users "scores together and divide by the total to get the percentage. */
SELECT (517 + 309 + 304 + 282) / 6366.0;

/* How many times has each offending user posted this link? */
SELECT user,
   COUNT(*)
FROM hacker_news
WHERE url LIKE '%watch?v=dQw4w9WgXcQ%'
GROUP BY user
ORDER BY COUNT(*) DESC;

    /* ou podemos usar : */

SELECT user,
   COUNT(*)
FROM hacker_news
WHERE url LIKE '%watch?v=dQw4w9WgXcQ%'
GROUP BY 1
ORDER BY 2 DESC;

/* We want to categorize each story based on their source. */
SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source'
FROM hacker_news;

  /* ou podemos usar o metodo COUNT */

SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source',
  COUNT(*)
FROM hacker_news
GROUP BY 1;

/* What’s the best time of the day to post a story on Hacker News? */
SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

/*The hours of the timestamp. The average score for each hour. The count of stories for each hour */
SELECT strftime('%H', timestamp), 
   AVG(score),
   COUNT(*)
FROM hacker_news
GROUP BY 1
ORDER BY 1;

/* What are the best hours to post a story on Hacker News? */
SELECT strftime('%H', timestamp) AS 'Hour', 
   ROUND(AVG(score), 1) AS 'Average Score', 
   COUNT(*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 1;
