create database if not exists movie;
USE movie;
CREATE TABLE if not exists MOVIE (
    mID INT PRIMARY KEY,
    Title VARCHAR(100),
    Year INT,
    Director VARCHAR(100)
);


INSERT INTO MOVIE (mID, Title, Year, Director) VALUES
(101, 'Top Gun', 1986, 'Tony Scott'),
(102, 'Titanic', 1997, 'James Cameron'),
(103, 'The Lion King', 1994, 'Rob Minkoff'),
(104, 'Gravity', 2013, 'Alfonso Cuaron'),
(105, 'Harry Potter', 2001, NULL),
(106, 'Cast Away', 2000, 'Robert Zemeckis'),
(107, 'Spider Man', 2002, 'Sam Raimi'),
(108, 'The Godfather', 1972, 'Francis Coppola');

CREATE TABLE if not exists Ratings (
    uID INT,
    mID INT,
    Rating INT,
    ratingDate DATE
);
INSERT INTO Ratings (uID, mID, Rating, ratingDate)
VALUES
(101, 1, 5, '2023-01-10'),
(102, 2, 4, '2023-02-15'),
(103, 3, 3, '2023-03-20'),
(104, 4, 5, '2023-04-05'),
(105, 5, 2, '2023-05-12'),
(106, 6, 4, '2023-06-18'),
(107, 7, 3, '2023-07-22');

# find the title and year of movies that were created after the year 2001
SELECT Title , year FROM MOVIE
where year > 2000;

# find the title, mID and Rating of movies that were created before the year 2000 and rating > 2
select M.Title, M.mID, R.Rating from MOVIE M
join Rating R on M.mID = R.mID
where M.year < 2000 and R.Rating > 2;

# sort all of the movies by descending rating
select M.Title, M.mID, R.Rating from MOVIE M
join Rating R on M.mID = R.mID
order by R.Rating desc;

#find all movies that have the exact same rating
select mID, Rating, count(*) as total
from Rating group by mID, Rating
having count(*) >1;

# create a query that looks for a movie's ID, title, and director, but only if it has a rating above 4
select distinct M.mID, M.title, M.director, R.Rating from Movie M
join Rating R on M.mID = R.mID
where R.Rating > 4;


