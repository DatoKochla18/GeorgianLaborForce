/****** Script for SelectTopNRows command from SSMS  ******/



 select * from Variables


----Creating and cleaning DimRegion Table
 CREATE Table DimRegion(
	Region_id int not null,
	Region nvarchar(100),
	primary key (Region_id)
 )

 INSERT INTO DimRegion (Region_id,Region)
SELECT Cast(SUBSTRING(Region,0,CHARINDEX('|',Region,0))as int) as Region_ID ,
	   SUBSTRING(Region,CHARINDEX('|',Region,0)+1,LEN(Region)) as Region 
FROM Variables
WHERE Region is not null and  Region Like '%|%'

--CHECK
SELECT * FROM DimRegion

---Creating and Cleansing DimOccupation
CREATE TABLE DimOccupation(
	Occupation_ID int not null,
	Occupation nvarchar(100),
	Primary Key (Occupation_ID)
)

INSERT INTO DimOccupation
SELECT SUBSTRING(Occupation_converted,0,CHARINDEX('|',Occupation_converted,0)) as Occupation_Id,
	   SUBSTRING(Occupation_converted,CHARINDEX('|',Occupation_converted,0)+1,len(Occupation_converted)) as Occupation
FROM Variables
WHERE Occupation_converted is not null and Occupation_converted LIKE '%|%'


--CHECK
SELECT * from DimOccupation


--Creating and cleaning DimEducation
Create table DimEducation (
	Education_Id int not null,
	Education nvarchar(100),
	Primary key(Education_Id)
)
Insert into DimEducation
SELECT SUBSTRING(Education,0,CHARINDEX('|',Education,0)) as Education_Id ,
	   SUBSTRING(Education,CHARINDEX('|',Education,0)+1,LEN(Education)) as Education 
 from Variables
 Where Education is not null and Education LIKE '%|%'


 --CHECK
 Select * from DimEducation


 --Creating and cleaning DimWorkplace
 
 Create table DimWorkplace(
	WorkPlace_ID int not null,
	WorkPlace nvarchar(100),
	Primary key (WorkPlace_ID)
 )

 INSERT INTO DimWorkPlace
 SELECT SUBSTRING(B35_Workplace,0,CHARINDEX('|',B35_Workplace,0)) as WorkPlace_ID ,
	   SUBSTRING(B35_Workplace,CHARINDEX('|',B35_Workplace,0)+1,LEN(B35_Workplace)) as WorkPlace  from Variables
WHERE B35_Workplace is not null and B35_Workplace like '%|%'



--Check
Select * from DimWorkPlace

--Creating and Cleaning UneploymentTime

Create Table DimUnemploymentTime(
	Time_ID int not null,
	Uneployment_time nvarchar(100),
	Primary key (Time_ID)
)

Insert into DimUnemploymentTime
SELECT SUBSTRING(G4_Unemployment_Spin,0,CHARINDEX('|',G4_Unemployment_Spin,0)) as Time_ID ,
	   SUBSTRING(G4_Unemployment_Spin,CHARINDEX('|',G4_Unemployment_Spin,0)+1,LEN(G4_Unemployment_Spin)) as Unemployment_time
FROM Variables
WHERE G4_Unemployment_Spin is not null and  G4_Unemployment_Spin Like '%|%'



--Check
select * from DimUnemploymentTime


---Creating and cleaning DimGetToWorkTime

CREATE table DimGetToWorkTime(
	Time_to_work_ID int not null,
	GetToWorkTime nvarchar(100),
	primary key (Time_to_work_ID)

)

Insert into DimGetToWorkTime
SELECT SUBSTRING(B37_commute_time,0,CHARINDEX('|',B37_commute_time,0)) as Time_to_work_ID ,
	   SUBSTRING(B37_commute_time,CHARINDEX('|',B37_commute_time,0)+1,LEN(B37_commute_time)) as GetToWorkTime

FROM Variables
WHERE B37_commute_time is not null and  B37_commute_time Like '%|%'

---Creating and cleaning DimNetEarnings

CREATE table DimNetEarnings(
	Earnings_ID int not null,
	NetEarnings nvarchar(100),
	primary key (Earnings_id)

)

Insert into DimNetEarnings
SELECT SUBSTRING(B24_B25_Net_earnings,0,CHARINDEX('|',B24_B25_Net_earnings,0)) as Earnings_ID ,
	   SUBSTRING(B24_B25_Net_earnings,CHARINDEX('|',B24_B25_Net_earnings,0)+1,LEN(B24_B25_Net_earnings)) as Earnings

FROM Variables
WHERE B24_B25_Net_earnings is not null and B24_B25_Net_earnings Like '%|%'


--CHECK
select * from DimGetToWorkTime

--Creating and Inserting DimIncome
Create Table DimIncome(
Income_id int not null,
Income nvarchar(100),
primary key (Income_id)
)

WITH unpivoted_table AS (
    SELECT txt
    FROM Variables
    UNPIVOT (txt FOR col IN (H2_1_Income_sources,H2_2_Income_sources,H2_3_Income_sources,H2_4_Income_sources,
	H2_5_Income_sources,H2_6_Income_sources,H2_7_Income_sources,
	H2_8_Income_sources,H2_88_Income_sources,H2_97_Income_sources
)) u
)

, cte AS (Select SUBSTRING(txt,0,CHARINDEX('|',txt,0)) as Income_Id ,
				 SUBSTRING(txt,CHARINDEX('|',txt,0)+1,LEN(txt)) as Income
    FROM unpivoted_table
    Where txt is not null and txt like '%|%'
)

Insert into DimIncome 
Select Income_id,Income From cte 

--Check
Select * from DimIncome


--Creating and cleaning DimTransport
Create Table DimTransport(
transport_id int not null,
transport nvarchar(100),
primary key (transport_id)
)
WITH unpivoted_table AS (
    SELECT txt
    FROM Variables
    UNPIVOT (txt FOR col IN ([B36_1_Type_of_transport]
      ,[B36_2_Type_of_transport]
      ,[B36_3_Type_of_transport]
      ,[B36_4_Type_of_transport]
      ,[B36_5_Type_of_transport]
      ,[B36_6_Type_of_transport]
      ,[B36_97_Type_of_transport]
      ,[B36_99_Type_of_transport])) u
)

, cte AS (Select SUBSTRING(txt,0,CHARINDEX('|',txt,0)) as Transport_Id ,
				 SUBSTRING(txt,CHARINDEX('|',txt,0)+1,LEN(txt)) as Transport
    FROM unpivoted_table
    Where txt is not null and txt like '%|%'
)

Insert into DimTransport
Select * From cte 

--Check

Select * from DimTransport


--Creating and cleaning DimFindWork

Create Table DimFindWork(
	findWork_id int not null,
	FindWorkWays nvarchar(100),
	primary key(findWork_id)
)

WITH unpivoted_table AS (
    SELECT txt
    FROM Variables
    UNPIVOT (txt FOR col IN ([G3_1_Methods_used_to_find_work]
      ,[G3_2_Methods_used_to_find_work]
      ,[G3_3_Methods_used_to_find_work]
      ,[G3_4_Methods_used_to_find_work]
      ,[G3_5_Methods_used_to_find_work]
      ,[G3_6_Methods_used_to_find_work]
      ,[G3_7_Methods_used_to_find_work]
      ,[G3_8_Methods_used_to_find_work]
      ,[G3_9_Methods_used_to_find_work]
      ,[G3_10_Methods_used_to_find_work]
      ,[G3_11_Methods_used_to_find_work]
      ,[G3_97_Methods_used_to_find_work])) u
)

, cte AS (Select SUBSTRING(txt,0,CHARINDEX('|',txt,0)) as findWork_id ,
				 SUBSTRING(txt,CHARINDEX('|',txt,0)+1,LEN(txt)) as FindWorkWays
    FROM unpivoted_table
    Where txt is not null and txt like '%|%'
)

Insert  into DimFindWork
select * from cte

--Check
Select* from DimFindWork


--Create DimOutforce
create table DimOutforce (
	outforce_id int identity primary key,
	outforce_type nvarchar(50)
)
insert into DimOutforce
select distinct outforce_id from FactWorkForce
where outforce_id is not null

select * from DimOutforce
