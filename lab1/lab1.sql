CREATE DATABASE Liga1
go
use Liga1
go

CREATE TABLE Stadiums
(Sid INT PRIMARY KEY NOT NULL,
Name varchar(50),
Location varchar(50),
Capacity int
)

CREATE TABLE Teams
(Tid INT PRIMARY KEY NOT NULL,
Name varchar(50),
City varchar(50),
HomeStadium int FOREIGN KEY REFERENCES Stadiums(Sid),
ChampionshipTitles int
)

CREATE TABLE Players
(Pid INT PRIMARY KEY NOT NULL,
Name varchar(50),
Age varchar(50),
Tid int FOREIGN KEY REFERENCES Teams(Tid),
)

CREATE TABLE Referees
(Rid INT PRIMARY KEY NOT NULL,
Name varchar(50),
Age varchar(50),
)

CREATE TABLE Coaches
(Cid INT PRIMARY KEY NOT NULL,
Name varchar(50),
Age varchar(50),
Tid int FOREIGN KEY REFERENCES Teams(Tid)
)

CREATE TABLE Suspensions
(Sid INT PRIMARY KEY NOT NULL,
Pid int FOREIGN KEY REFERENCES Players(Pid),
StartDate datetime,
EndDate datetime
)

CREATE TABLE Matches
(Mid INT PRIMARY KEY NOT NULL,
Team1 int FOREIGN KEY REFERENCES Teams(Tid),
Team2 int FOREIGN KEY REFERENCES Teams(Tid),
Stadium int FOREIGN KEY REFERENCES Stadiums(Sid),
Rid int FOREIGN KEY REFERENCES Referees(Rid),
Date datetime
)

CREATE TABLE Sponsors
(Sid INT PRIMARY KEY NOT NULL,
Name varchar(50),
)

CREATE TABLE Sponsorships
(Sid INT PRIMARY KEY,
Team int FOREIGN KEY REFERENCES Teams(Tid),
Sponsor int FOREIGN KEY REFERENCES Sponsors(Sid)
)

CREATE TABLE TvChannels
(Cid INT PRIMARY KEY,
Name varchar(50)
)

CREATE TABLE MatchBroadcasts
(Bid INT PRIMARY KEY,
Match int FOREIGN KEY REFERENCES Matches(Mid),
TvChannel int FOREIGN KEY REFERENCES TvChannels(cid)
)
