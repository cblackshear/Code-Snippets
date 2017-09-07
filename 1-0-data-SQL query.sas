**************************************************
*********** Load data from SQL server ************
**************************************************;

proc sql;

*Change datasrc to the name of ODBC driver, and change user name;
connect to odbc as mycon (datasrc=XXXX);


*1;
create table sql.tblEmailTemplates as
	select *
		from connection to mycon
			(SELECT * FROM tblEmailTemplates);

*2;
create table sql.tblLogs as
	select *
		from connection to mycon
			(SELECT * FROM tblLogs);

*3;
create table sql.tblP2Answers as
	select *
		from connection to mycon
			(SELECT * FROM tblP2Answers);

*4;
create table sql.tblP2AttemptDates as
	select *
		from connection to mycon
			(SELECT * FROM tblP2AttemptDates);

*5;
create table sql.tblSA as
	select *
		from connection to mycon
			(SELECT * FROM tblSA);

*6;
create table sql.tblSA3DayData as
	select *
		from connection to mycon
			(SELECT * FROM tblSA3DayData);

*7;
create table sql.tblSA3DayDataHistory as
	select *
		from connection to mycon
			(SELECT * FROM tblSA3DayDataHistory);

*8;
create table sql.tblSAAttemptDates as
	select *
		from connection to mycon
			(SELECT * FROM tblSAAttemptDates);

*9;
create table sql.tblSAData as
	select *
		from connection to mycon
			(SELECT * FROM tblSAData);

*10;
create table sql.tblSADataDrinkTimes as
	select *
		from connection to mycon
			(SELECT * FROM tblSADataDrinkTimes);

*11;
create table sql.tblSADataHistory as
	select *
		from connection to mycon
			(SELECT * FROM tblSADataHistory);

*12;
create table sql.tblSADataQuestions as
	select *
		from connection to mycon
			(SELECT * FROM tblSADataQuestions);

*13;
create table sql.tblSADataTimes as
	select *
		from connection to mycon
			(SELECT * FROM tblSADataTimes);

*14;
create table sql.tblSADataTimesSubTypes as
	select *
		from connection to mycon
			(SELECT * FROM tblSADataTimesSubTypes);

*15;
create table sql.tblSAHistory as
	select *
		from connection to mycon
			(SELECT * FROM tblSAHistory);

*16;
create table sql.tblUsers as
	select *
		from connection to mycon
			(SELECT * FROM tblUsers);

disconnect from mycon;
quit;
