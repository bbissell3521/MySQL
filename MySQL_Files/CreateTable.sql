CREATE TABLE Coach (
	ID int NOT NULL auto_increment,
    FirstName varchar(20), 
    LastName varchar(20),
    primary key(ID)
    );
CREATE TABLE Team(
	TeamName varchar(35) NOT NULL,
    Location varchar(35),
	primary key(TeamName)
    );
CREATE TABLE Player(
	ID int NOT NULL,
    FirstName varchar(20),
    LastName varchar(20),
    primary key(ID)
    );
CREATE TABLE Statistics(
	PlayerID int, 
    GoalsAgainst int,
    GamesPlayed int, 
    Saves int,
    Wins int,
    foreign key (PlayerID) references Player(ID) ON update cascade ON delete cascade
    );
CREATE TABLE CoachedBy(
	CoachID int NOT NULL, 
    PlayerID int NOT NULL,
    primary key(CoachID, PlayerID),
    foreign key (CoachID) References Coach(ID),
    foreign key (PlayerID) references Player(ID)
    );
CREATE TABLE PlayedFor(
	TeamName varchar(35) NOT NULL,
    PlayerID int NOT NULL,
    primary key (TeamName, PlayerID),
    foreign key (TeamName) references Team(TeamName),
    foreign key (PlayerID) references Player(ID)
    );
CREATE TABLE CoachedFor(
	CoachID int NOT NULL,
    TeamName varchar(35) NOT NULL,
    primary key (CoachID, TeamName),
    foreign key (CoachID) references Coach(ID),
    foreign key (TeamName) references Team(TeamName)
    );

    