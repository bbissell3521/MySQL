LOAD DATA LOCAL INFILE 'C:/Desktop/MySQL_Files/Teams.csv'
INTO TABLE team
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;