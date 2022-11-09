use Liga1

--- INSERT queries
DELETE FROM MatchBroadcasts
DELETE FROM Sponsorships
DELETE FROM Matches
DELETE FROM Players
DELETE FROM Coaches
DELETE FROM Teams
DELETE FROM Stadiums
DELETE FROM Referees
DELETE FROM Sponsors
DELETE FROM TvChannels

INSERT INTO Stadiums(Sid, Name, Location, Capacity) VALUES (1, 'Stadionul National Arena', 'Bucuresti', 55000)
INSERT INTO Stadiums(Sid, Name, Location, Capacity) VALUES (2, 'Stadionul Ghencea', 'Bucuresti', 30000)
INSERT INTO Stadiums(Sid, Name, Location, Capacity) VALUES (3, 'Stadionul Giulesti', 'Bucuresti', 30000)
INSERT INTO Stadiums(Sid, Name, Location, Capacity) VALUES (4, 'Stadionul "Stefan Cel Mare"', 'Bucuresti', 30000)
INSERT INTO Stadiums(Sid, Name, Location, Capacity) VALUES (5, 'Stadionul Municipal Dej', 'Dej', 3500)
INSERT INTO Stadiums(Sid, Name, Location, Capacity) VALUES (6, 'Stadionul Municipal Baia Mare', 'Baia Mare', 10000)
INSERT INTO Stadiums(Sid, Name, Location, Capacity) VALUES (7, 'Stadionul "Dr. Mircea Luca"', 'Cluj-Napoca', 30000)
INSERT INTO Stadiums(Sid, Name, Location, Capacity) VALUES (8, 'Stadionul "Dr.Constantin Radulescu"', 'Cluj-Napoca', 30000)
INSERT INTO Stadiums(Sid, Name, Location, Capacity) VALUES (9, 'Stadionul Judetean Baia Mare', 'Baia Mare', 30000)
INSERT INTO Stadiums(Sid, Name, Location, Capacity) VALUES (10, 'Stadionul Olimpic Baia Mare', 'Baia Mare', 30000)
INSERT INTO Stadiums(Sid, Name, Location, Capacity) VALUES (11, 'Stadionul Giurgiu', 'Giurgiu', 30000)

INSERT INTO Teams(Tid, Name, City, HomeStadium, ChampionshipTitles) VALUES (1, 'Dinamo', 'Bucuresti', 4, 18)
INSERT INTO Teams(Tid, Name, City, HomeStadium, ChampionshipTitles) VALUES (2, 'Steaua', 'Bucuresti', 2, 26)
INSERT INTO Teams(Tid, Name, City, HomeStadium, ChampionshipTitles) VALUES (3, 'Rapid', 'Bucuresti', 3, 3)
INSERT INTO Teams(Tid, Name, City, HomeStadium, ChampionshipTitles) VALUES (4, 'CFR', 'Cluj-Napoca', 8, 8)
INSERT INTO Teams(Tid, Name, City, HomeStadium, ChampionshipTitles) VALUES (5, 'U Cluj', 'Cluj-Napoca', 7, 0)
INSERT INTO Teams(Tid, Name, City, HomeStadium, ChampionshipTitles) VALUES (6, 'Unirea Dej', 'Dej', 6, 0)
INSERT INTO Teams(Tid, Name, City, HomeStadium, ChampionshipTitles) VALUES (7, 'Astra Giurgiu', 'Giurgiu', 11, NULL)
INSERT INTO Teams(Tid, Name, City, HomeStadium, ChampionshipTitles) VALUES (6, 'Unirea Urziceni', 'Urziceni', 100, 1) --violates referential constraints


INSERT INTO Referees(Rid, Name, Age) VALUES (1, 'Ovidiu Hategan', 40)
INSERT INTO Referees(Rid, Name, Age) VALUES (2, 'Istvan Kovacs', 35)
INSERT INTO Referees(Rid, Name, Age) VALUES (3, 'Cristian Balaj', 38)
INSERT INTO Referees(Rid, Name, Age) VALUES (4, 'Gheorghe Mihai', 45)

INSERT INTO Matches(Mid, Team1, Team2, Stadium, Rid, Date) VALUES (1, 1, 2, 1, 1, '2022-01-01')
INSERT INTO Matches(Mid, Team1, Team2, Stadium, Rid, Date) VALUES (2, 1, 3, 2, 2, '2022-01-02')
INSERT INTO Matches(Mid, Team1, Team2, Stadium, Rid, Date) VALUES (3, 1, 4, 1, 3, '2022-02-03')
INSERT INTO Matches(Mid, Team1, Team2, Stadium, Rid, Date) VALUES (4, 1, 5, 2, 4, '2022-02-07')
INSERT INTO Matches(Mid, Team1, Team2, Stadium, Rid, Date) VALUES (5, 1, 6, 1, 1, '2022-01-05')

INSERT INTO Sponsors(Sid, Name) VALUES (1, 'Budweiser')
INSERT INTO Sponsors(Sid, Name) VALUES (2, 'Adidas')
INSERT INTO Sponsors(Sid, Name) VALUES (3, 'Nike')
INSERT INTO Sponsors(Sid, Name) VALUES (4, 'Puma')
INSERT INTO Sponsors(Sid, Name) VALUES (5, 'Digi Sport')

INSERT INTO Sponsorships(Sid, Team, Sponsor) VALUES (1, 1, 1)
INSERT INTO Sponsorships(Sid, Team, Sponsor) VALUES (2, 1, 2)
INSERT INTO Sponsorships(Sid, Team, Sponsor) VALUES (3, 3, 3)
INSERT INTO Sponsorships(Sid, Team, Sponsor) VALUES (4, 6, 4)
INSERT INTO Sponsorships(Sid, Team, Sponsor) VALUES (5, 5, 1)

INSERT INTO Players(Pid, Name, Age, Tid) VALUES (1, 'Cristiano Ronaldo', 35, 1)
INSERT INTO Players(Pid, Name, Age, Tid) VALUES (2, 'Lionel Messi', 34, 1)
INSERT INTO Players(Pid, Name, Age, Tid) VALUES (3, 'Neymar', 29, 2)
INSERT INTO Players(Pid, Name, Age, Tid) VALUES (4, 'Robert Lewandowski', 32, 3)
INSERT INTO Players(Pid, Name, Age, Tid) VALUES (5, 'Kylian Mbappe', 22, 3)
INSERT INTO Players(Pid, Name, Age) VALUES (6, 'Ovidiu Popescu', 24)
INSERT INTO Players(Pid, Name, Age, Tid) VALUES (6, 'Octavian Popescu', 20, 2)

INSERT INTO Coaches(Cid, Name, Tid, Age) VALUES (1, 'Zinedine Zidane', 1, 48)
INSERT INTO Coaches(Cid, Name, Tid, Age) VALUES (2, 'Pep Guardiola', 2, 50)
INSERT INTO Coaches(Cid, Name, Tid, Age) VALUES (3, 'Jurgen Klopp', 3, 53)
INSERT INTO Coaches(Cid, Name, Tid, Age) VALUES (4, 'Jose Mourinho', 4, 58)
INSERT INTO Coaches(Cid, Name, Age) VALUES (5, 'Dan Petrescu', 58)

INSERT INTO TvChannels(Cid, Name) VALUES (1, 'Digi Sport')
INSERT INTO TvChannels(Cid, Name) VALUES (2, 'Pro TV')
INSERT INTO TvChannels(Cid, Name) VALUES (3, 'Realitatea TV')
INSERT INTO TvChannels(Cid, Name) VALUES (4, 'Antena 1')

INSERT INTO MatchBroadcasts(Bid, Match, TvChannel) VALUES (1, 1, 1)
INSERT INTO MatchBroadcasts(Bid, Match, TvChannel) VALUES (2, 2, 2)
INSERT INTO MatchBroadcasts(Bid, Match, TvChannel) VALUES (3, 3, 1)

--Update
UPDATE Teams SET ChampionshipTitles = 0 WHERE ChampionshipTitles IS NULL --used IS NULL
UPDATE Matches SET Rid = 3 WHERE Stadium != 2 AND Date BETWEEN '2022-02-01' AND '2022-02-08' -- used AND
UPDATE Stadiums SET Capacity = Capacity + 1000 WHERE Location IN ('Bucuresti', 'Cluj-Napoca') -- used IN


-- Delete
INSERT INTO Sponsors(Sid, Name) VALUES (7, 'Betano')
INSERT INTO Sponsors(Sid, Name) VALUES (6, 'Betfair')
DELETE FROM Sponsors WHERE Name LIKE '%bet%' -- Used LIKE

INSERT INTO Referees(Rid, Name, Age) VALUES (5, 'Alexandru Mihai', 60)
INSERT INTO Referees(Rid, Name, Age) VALUES (6, 'George Ion', 61)
INSERT INTO Referees(Rid, Name, Age) VALUES (7, 'Mihai Popescu', 64)
DELETE FROM Referees WHERE Age > 60 -- Used >

-- a. 2 queries with union
-- Get all players and referees currently active in the league ordered by age
SELECT Name, Age FROM Referees
UNION
SELECT Name, Age FROM Players
ORDER BY Age

-- Get top 5 smallest stadiums by capacity out of all the stadiums from Cluj-Napoca and Bucuresti
SELECT DISTINCT TOP(5) Name, Capacity FROM Stadiums WHERE Location = 'Cluj-Napoca' OR Location = 'Bucuresti' ORDER BY Capacity

-- b. 
-- Get TV channels that are also sponsors - INTERSECT
SELECT Name
FROM TvChannels
INTERSECT
SELECT Name
FROM Sponsors

-- Get TV channels that are also sponsors - IN alternative
SELECT T.Name
FROM TvChannels T
WHERE T.Name IN (SELECT S.Name FROM Sponsors S)

-- c. 
-- Get TV channels that are not also sponsors - EXCEPT
SELECT Name
FROM TvChannels
EXCEPT
SELECT Name
FROM Sponsors

-- Get TV channels that are not also sponsors - NOT IN alternative
SELECT T.Name
FROM TvChannels T
WHERE T.Name NOT IN (SELECT S.Name FROM Sponsors S)

--d.
-- Get tv channel names and the referees of the matches broadcasted by them
SELECT DISTINCT TvChannels.Name, Referees.Name FROM TvChannels
    INNER JOIN MatchBroadcasts ON TvChannels.Cid = MatchBroadcasts.TvChannel
	INNER JOIN Matches ON MatchBroadcasts.Match = Matches.Mid
    INNER JOIN Referees ON Matches.Rid = Referees.Rid

-- Get all players and their teams
SELECT Players.Name, Teams.Name FROM Players
    LEFT JOIN Teams ON Players.Tid = Teams.Tid

-- Get all coaches and their team names
SELECT Coaches.Name, Teams.Name FROM Teams
    RIGHT JOIN Coaches ON Coaches.Tid = Teams.Tid

-- Get all tv channel names and matches
SELECT TvChannels.Name, Matches.Mid FROM TvChannels
    FULL JOIN MatchBroadcasts ON TvChannels.Cid = MatchBroadcasts.TvChannel
    FULL JOIN Matches ON MatchBroadcasts.Match = Matches.Mid

-- e.
-- Select player names that are in teams that have matches on 2022-01-01
SELECT Players.Name FROM Players
WHERE Players.Tid IN (SELECT Teams.Tid FROM Teams
    WHERE Teams.Tid IN (SELECT Matches.Team1 FROM Matches WHERE Matches.Date = '2022-01-01' )
		 OR Teams.Tid IN (SELECT Matches.Team2 FROM Matches WHERE Matches.Date = '2022-01-01'))

-- Select matches that have referees younger than 40
SELECT * FROM Matches
    WHERE Rid IN (SELECT Rid FROM Referees WHERE Age < 40)

--f
-- Select all teams that have matches
SELECT * FROM Teams
    WHERE EXISTS (SELECT Team1 FROM Matches WHERE Team1 = Teams.Tid)
    OR EXISTS (SELECT Team2 FROM Matches WHERE Team2 = Teams.Tid)

-- Select teams with players in them
SELECT * FROM Teams
    WHERE EXISTS (SELECT * FROM Players WHERE Players.Tid = Teams.Tid)

--g
-- Select the top 3 stadiums and their and capacity + 500 if capacity is greater than 10000 ordered by capacity
SELECT DISTINCT TOP(3) S.Name, S.Capacity + 500 AS IncreasedCapacity 
FROM (Select * FROM Stadiums WHERE Capacity > 10000) S
ORDER BY IncreasedCapacity

-- Select cities  that have teams which won the championship
SELECT DISTINCT T.City FROM (SELECT * FROM Teams WHERE ChampionshipTitles > 0) T

--h
-- Select the names of the teams that have at least 2 players
SELECT Teams.Name FROM Teams
    WHERE Tid IN (SELECT Tid FROM Players GROUP BY Tid HAVING COUNT(*) >= 2)

-- Select team names and the championship titles they might have if they win this season for the teams with the most players
SELECT Teams.Name, Teams.ChampionshipTitles + 1 AS PossibleTitles FROM Teams
    WHERE Tid IN 
		(SELECT Tid FROM Players 
		GROUP BY Tid 
		HAVING COUNT(*) = 
			(SELECT MAX(Count) FROM 
			(SELECT COUNT(*) AS Count FROM Players GROUP BY Tid) T))

-- Select stadiums from cities that have a stadium number higher than average
SELECT * FROM Stadiums
    WHERE Location IN (SELECT Location 
					   FROM Stadiums 
					   GROUP BY Location 
					   HAVING COUNT(*) > (SELECT AVG(Count) 
										  FROM (SELECT COUNT(*) AS Count 
										  FROM Stadiums 
										  GROUP BY Location) T))

-- Select average stadium capacity per city
SELECT Location, AVG(Capacity) as AverageCapacity FROM Stadiums GROUP BY Location


--i
-- Stadiums with a capacity higher than all stadiums in Cluj-Napoca
SELECT * FROM Stadiums
    WHERE Capacity > ALL (SELECT Capacity FROM Stadiums WHERE Location = 'Cluj-Napoca')

-- Stadiums with a capacity higher than all stadiums in Cluj-Napoca -- aggregation operator alterantive
SELECT * FROM Stadiums
    WHERE Capacity > (SELECT MAX(Capacity) FROM Stadiums WHERE Location = 'Cluj-Napoca')

-- Select teams that have a number of players higher than at least one team
SELECT * FROM Teams
    WHERE Tid = ANY (SELECT Tid FROM Players GROUP BY Tid HAVING COUNT(*) > ANY (SELECT COUNT(*) FROM Players GROUP BY Tid))

-- Select teams that have a number of players higher than at least one team -- IN operator alternative
SELECT * FROM Teams
    WHERE Tid IN (SELECT Tid FROM Players GROUP BY Tid HAVING COUNT(*) > ANY (SELECT COUNT(*) FROM Players GROUP BY Tid))

-- Print coaches that are at least 15 years older than all players from Steaua
SELECT * FROM Coaches
    WHERE Age > ALL (SELECT Age + 15 FROM Players WHERE Tid = 1)

-- Print coaches that are at least 15 years older than all players from Steaua -- aggregation operator alternative
SELECT * FROM Coaches
    WHERE Age > (SELECT MAX(Age + 15) FROM Players WHERE Tid = 1)
	
-- Print referees that referee matches where U Cluj plays
SELECT * FROM Referees
    WHERE Rid = ANY (SELECT Rid FROM Matches WHERE Team1 = 5 OR Team2 = 5)

-- Print referees that referee matches where U Cluj plays -- IN operator alternative
SELECT * FROM Referees
    WHERE Rid IN (SELECT Rid FROM Matches WHERE Team1 = 5 OR Team2 = 5)