/*TEAM_ID Table*/
CREATE TABLE TEAM_ID(
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
)

INSERT INTO TEAM_ID(teamName, startYear, ownerName, GMName, coachName, startQB, officeAddress, city, state, zipCode, phone, overallRecord, )
	VALUES (Dallas Cowboys,1960,Jerry Jones,Jerry Jones,Jason Garrett,Rayne Dak Prescott,One Cowboys Way,
Frisco ,TX, 75034,972-497-4060,)

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


