DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries
(
  id     INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name   TEXT,
  salary DECIMAL,
  age    TINYINT
);

INSERT INTO salaries
VALUES (1, 'Harsh', 2000, 19),
       (2, 'Dhanraj', 3000, 20),
       (3, 'Ashish', 1500, 19),
       (4, 'Harsh', 3500, 19),
       (5, 'Ashish', 1500, 19);

SELECT name, SUM(salary)
FROM salaries
GROUP BY name;

SELECT name, AVG(age)
FROM salaries
GROUP BY name;

SELECT name AS NAME, AVG(age)
FROM salaries
GROUP BY name
HAVING AVG(age) > 19;