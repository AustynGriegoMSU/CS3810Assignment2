TIPS FOR SQL:

COMMANDS ALWAYS CALLED IN THIS ORDER:
SELECT
FROM
JOIN
WHERE
GROUP BY
HAVING
ORDER BY;

EXAMPLE:
SELECT name, age
FROM users
WHERE age > 18

TO CREATE A TABLE:
    CREATE TABLE table_name (
        column1_name column1_datatype,
        column2_name column2_datatype,
        ...
    );

Primary Key: a unique identifier for each record in a table.
    example:
        sid INT PRIMARY KEY

Foreign Key: links tables together by referencing the PK of another table.
    example: 
        sid INT, FOREIGN KEY (sid) REFERENCES students(sid)

Constraints: rules applied to columns to enforce data integrity.
    example:
        age 
        age INT CHECK (age > 0)

JOIN TYPES:
1. INNER JOIN: returns records that have matching values in both tables.

2. LEFT JOIN: returns all records from the left table, and the matched records from the
    right table. If there is no match, the result is NULL on the right side.

3. RIGHT JOIN: returns all records from the right table, and the matched records from the
    left table. If there is no match, the result is NULL on the left side.

4. FULL OUTER JOIN: returns all records when there is a match in either left or
    right table. If there is no match, the result is NULL on the side that does not have a match.

5. CROSS JOIN: returns the Cartesian product of the two tables, meaning it returns all possible 
    combinations of rows from both tables.
