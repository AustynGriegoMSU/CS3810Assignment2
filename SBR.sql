-- Create Tables --
CREATE TABLE Sailors (
    Sid INT PRIMARY KEY,
    Sname VARCHAR(50) NOT NULL,
    Rating INT CHECK (Rating >= 0 AND Rating <= 10),
    Age INT CHECK (Age > 0)
);

CREATE TABLE Boats (
    Bid INT PRIMARY KEY,
    Bname VARCHAR(50) NOT NULL,
    Color VARCHAR(20) NOT NULL
);

CREATE TABLE Reservation (
    Sid INT,
    Bid INT,
    Date DATE,
    PRIMARY KEY (Sid, Bid, Date),
    FOREIGN KEY (Sid) REFERENCES Sailors(Sid),
    FOREIGN KEY (Bid) REFERENCES Boats(Bid)
);

-- Insert Data --
INSERT INTO Sailors (Sid, Sname, Rating, Age) VALUES
(001, 'Popeye'  , 8, 45),
(002, 'Gulligan', 5, 19),
(003, 'Magellan', 9, 50),
(004, 'Cook'    , 7, 18);

INSERT INTO Boats (Bid, Bname, Color) VALUES
(2001, 'Spinacher'   , 'Red'  ),
(2002, 'Trinidad'    , 'Blue' ),
(2003, 'San Antonio' , 'Red'  ),
(2004, 'Concepcion'  , 'Green'),
(2005, 'Victoria'    , 'Red'  ),
(2006, 'Santiago'    , 'Blue' ),
(2007, 'Endeavor'    , 'Black'),
(2008, 'Resolution'  , 'White');

INSERT INTO Reservation (Sid, Bid, Date) VALUES
(003, 2002, '2009-06-15'),
(003, 2003, '2009-06-15'),
(003, 2004, '2010-06-15'),
(003, 2005, '2010-06-15'),
(001, 2001, '2010-01-01'),
(001, 2005, '2015-01-15'),
(004, 2007, '2008-05-01'),
(004, 2008, '2012-08-01');