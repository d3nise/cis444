/*TEAM_ID Table*/
CREATE TABLE TEAM(
       teamID INT AUTO_INCREMENT PRIMARY KEY,
       teamName CHAR(45) NOT NULL,
       startYear INT(4) NOT NULL,
       ownerName VARCHAR(256) NOT NULL,
       GMName VARCHAR(256) NOT NULL,
       coachName VARCHAR(256) NOT NULL,
       startQB VARCHAR(256) NOT NULL,
       officeAddress VARCHAR(256) NOT NULL,
       city CHAR(50) NOT NULL,
       state CHAR(50) NOT NULL,
       zipCode INT(5) NOT NULL,
       phone VARCHAR(15) NOT NULL,
       overallRecord VARCHAR(15) NOT NULL,
       confRecord VARCHAR(15) NOT NULL
);

INSERT INTO TEAM(teamName, startYear, ownerName, GMName, coachName, startQB, officeAddress, city, state, zipCode, phone, overallRecord,confRecord)
VALUES ('Dallas Cowboys','1960','Jerry Jones','Jerry Jones','Jason Garrett','Rayne Dak Prescott','One Cowboys Way','Frisco','TX','75034','(972)-497-4060','W5-L4','W4-L3');

INSERT INTO TEAM(teamName, startYear, ownerName, GMName, coachName, startQB, officeAddress, city, state, zipCode, phone, overallRecord,confRecord)
VALUES ('49ers','1946','John Edward', 'John Lynch','Kyle Shanahan','C. J. Beathard','4949 Marie P DeBartolo Way','Santa Clara','CA','95050','(408) 562-4949','W5-L10','W4-L3');

INSERT INTO TEAM(teamName, startYear, ownerName, GMName, coachName, startQB, officeAddress, city, state, zipCode, phone, overallRecord,confRecord)
VALUES ('Saints', '1967', 'Tom Benson', 'Mickey Loomis', 'Sean Payton','Drew Brees', 'Airline Drive', 'Metairie', 'LA', '70003','(504)731-1700', 'W345-L429', 'W8-L2');

INSERT INTO TEAM(teamName, startYear, ownerName, GMName, coachName, startQB, officeAddress, city, state, zipCode, phone, overallRecord,confRecord)
VALUES ('Eagles','1933','Jeffrey Lurie','Howie Roseman', 'Doug Pederson','Carson Wentz','Lincoln Financial Field', 'Philadelphia', 'PA', '19148','(267)570-4000', 'W6-L5', 'W3-L2');


/*
DENISE THUY VY NGUYEN
aCIS 444 HW 6
The teams table must be created with the following fields with proper types: 
teamID, 
teamName,
startYear, 
ownerName, 
GMName, 
coachName, 
startQB, 
officeAddress, 
city, 
state, 
zipCode,
phone,
overallRecord, 
confRecord

EX: Cowboys, 1960, Jerry Jones, Jerry Jones, Jason Garrett, Dak Prescott,
 One Legend Way, Arlington, TX 76011, (817)892-4000, W5-L4, W4-L3
*/


