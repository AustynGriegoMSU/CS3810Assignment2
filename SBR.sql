-- Create Tables --
CREATE TABLE Sailors (
    sid INT PRIMARY KEY,
    sname VARCHAR(50) NOT NULL,
    rating INT CHECK (rating >= 0 AND rating <= 10),
    age INT CHECK (age > 0)
);

CREATE TABLE Boats (
    bid INT PRIMARY KEY,
    bname VARCHAR(50) NOT NULL,
    color VARCHAR(20) NOT NULL
);

CREATE TABLE Reservation (
    sid INT,
    bid INT,
    date DATE,
    PRIMARY KEY (sid, bid, date),
    FOREIGN KEY (sid) REFERENCES Sailors(sid),
    FOREIGN KEY (bid) REFERENCES Boats(bid)
);

-- Insert Data --
INSERT INTO Sailors (sid, sname, rating, age) VALUES
(001, 'Popeye'  , 8, 45),
(002, 'Gulligan', 5, 19),
(003, 'Magellan', 9, 50),
(004, 'Cook'    , 7, 18);

INSERT INTO Boats (bid, bname, color) VALUES
(2001, 'Spinacher'   , 'Red'  ),
(2002, 'Trinidad'    , 'Blue' ),
(2003, 'San Antonio' , 'Red'  ),
(2004, 'Concepcion'  , 'Green'),
(2005, 'Victoria'    , 'Red'  ),
(2006, 'Santiago'    , 'Blue' ),
(2007, 'Endeavor'    , 'Black'),
(2008, 'Resolution'  , 'White');

INSERT INTO Reservation (sid, bid, date) VALUES
(003, 2002, '2009-06-15'),
(003, 2003, '2009-06-15'),
(003, 2004, '2010-06-15'),
(003, 2005, '2010-06-15'),
(001, 2001, '2010-01-01'),
(001, 2005, '2015-01-15'),
(004, 2007, '2008-05-01'),
(004, 2008, '2012-08-01');

-- Query --
SELECT s.sname, s.sid, s.age, s.rating
FROM Sailors s
WHERE s.age > 20
AND s.sid NOT IN (
    SELECT r.sid
    FROM Reservation r
    JOIN Boats b ON r.bid = b.bid
    WHERE b.color = 'Red'
);