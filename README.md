## Assignment 2
## Austyn Griego
## CS3810 Database Structures
## 03/30/2026

# Description:

1. Write the SQL to create tables (see the tables below) – make sure to include at least two CONSTRAINTS for each table.

2. Write the SQL to find the names of sailors with age over 20 who have not reserved a red boat. (RETURNS NO SAILORS)

3. Include Sailor Names, Sailor ID, Sailor Age, and Sailor Rating in the query.

# Tables: 
Dates in Reservations Differ from My Tables.

![SBR SQL tables](./Sailors-Boats-Reservations%20sql%20tables.png)

# Run SQL
From sql file: 

    sqlite3 sbr.db < SBR.sql

Using Terminal, SQLite:

    Start SQLite:
        sqlite3 sbr.db 
    Load Script:
        .read SBR.sql
    Run Query:
        SELECT s.sname, s.sid, s.age, s.rating
        FROM Sailors s
        WHERE s.age > 20
        AND s.sid NOT IN (
            SELECT r.sid
            FROM Reservation r
            JOIN Boats b ON r.bid = b.bid
            WHERE b.color = 'Red'
        );
    To Exit SQLite:
        .quit
