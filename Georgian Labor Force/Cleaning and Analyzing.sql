/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM [Work].[dbo].[FactWorkForce]

 alter table dbo.FactWorkForce
 drop column
  [UID]
      ,[DiaryID]
      ,[MemberNo]
   
      ,[QuarterNo]

      
      ,[_15]
      ,[LabourForce]
      ,[LabourForce_soft]

      ,[Not_identified]

      ,[Unemployed_soft]
      ,[OutsidetheLabourForce]
      ,[OutsidetheLabourForce_soft]
      ,[OutsidetheLabourForce_disabled]
      ,[OutsidetheLabourForce_emp_agency]
      ,[OutsidetheLabourForce_pensioner]
      ,[OutsidetheLabourForce_student]
      ,[OutsidetheLabourForce_homemaker]
      ,[OutsidetheLabourForce_discourage]
      ,[OutsidetheLabourForce_other]
      ,[OutsidetheLabourForce_unwillingness]
      ,[PLF_Seeking_not_available]
      ,[PLF_Available_not_seeking]
      ,[Potential_Labour_Force_PLF]
      ,[Others_outside_the_labour_force]
      ,[Time_related_underemployment_TRU]
      ,[Sector_ownership]
      ,[Status]
      ,[Brunch_1]
      ,[Brunch_converted_1]
      ,[Brunch_2]
      ,[Brunch_converted_2]
      ,[Occupation]

      ,[M_Actually_worked]
      ,[Informal_employment]
      ,[Full_time_and_part_time]
      ,[Reason_of_part_time]
      ,[Permanency_of_the_job]
      ,[Atipical_Work]
      ,[NEET_15_24]
      ,[NEET_15_29]
      ,[Second_Job]
      ,[Second_Sector_ownership]
      ,[Second_Status]
      ,[Second_Brunch_1]
      ,[Second_Brunch_converted_1]
      ,[Second_Brunch_2]
      ,[Second_Brunch_converted_2]
      ,[Second_Ocupation]
      ,[Second_Ocupation_converted]
      ,[S_Usually_hours]
      ,[S_Actually_worked]
      ,[Additional_or_other_job_seeker]
      ,[Previous_work_experience_last_8_years]
      ,[Previous_Brunch_1]
      ,[Previous_Brunch_converted_1]
      ,[Previous_Brunch_2]
      ,[Previous_Brunch_converted_2]
      ,[Previous_Occupation]
      ,[Previous_Occupation_converted]
 
      ,[Profession]
      ,[B10_Business_with_regular_salaried_workers]
      ,[B11_Number_of_employees_in_the_establishment]
      ,[B12_Agreement_type]
      ,[B17_Work_duration]
      ,[B22_Supervisory_responsibilities]
      ,[B23_Persons_under_supervision]
      ,[B26_Employed_at_local_unit]
      ,[B29_Shift_work]
      ,[B30_Evening_work]
      ,[B31_Night_work]
      ,[B32_Saturday_work]
      ,[B33_Sunday_work]
      ,[B34_Working_at_home]

      ,[B36_1_Type_of_transport]
      ,[B36_2_Type_of_transport]
      ,[B36_3_Type_of_transport]
      ,[B36_4_Type_of_transport]
      ,[B36_5_Type_of_transport]
      ,[B36_6_Type_of_transport]
      ,[B36_97_Type_of_transport]
      ,[B36_99_Type_of_transport]

      ,[C7_Main_reason_fewmore_hours]
      ,[C9_Reason_for_part_time]
      ,[E6_Reason_desire_change_work_condition]
      ,[F6_Year_of_leaving_the_last_job]
      ,[F7_Previous_job_duration]
      ,[F8_Reason_of_leaving_the_last_job]
      ,[F9_Previous_Status]
      ,[G3_1_Methods_used_to_find_work]
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
      ,[G3_97_Methods_used_to_find_work]
      
      ,[Long_term_unemployment]
      ,[G5_Type_of_employment_sought]
      ,[G6_Look_for_a_job_12months]
      ,[G7_Willingness_to_work]
      ,[G9_Main_reason_of_discouraged_worker]
      ,[G10_Availability_to_start_working]
      ,[G11_The_reasons_for_not_starting_work]
      ,[H1_Self_estimation_of_status]
      ,[H2_1_Income_sources]
      ,[H2_2_Income_sources]
      ,[H2_3_Income_sources]
      ,[H2_4_Income_sources]
      ,[H2_5_Income_sources]
      ,[H2_6_Income_sources]
      ,[H2_7_Income_sources]
      ,[H2_8_Income_sources]
      ,[H2_97_Income_sources]
      ,[H2_88_Income_sources]
      ,[I5_Formal_education]
      ,[I6_Non_formal_education]
      ,[I7_Number_of_hours_spent_on_all_training_activities]
      ,[I8_Purpose_of_last_learning_activity]
      ,[I9_Learning_activity_during_working_hours]
      ,[P_Weights]

      ,[merged_Transport]

      ,[merged_findwork]
 
      ,[merged_income]

      ,[merged_outforce]


--renaming columns
EXEC sp_RENAME 'dbo.FactWorkForce.B24_B25_Net_earnings', 'Net_earnings', 'COLUMN';
EXEC sp_RENAME 'dbo.FactWorkForce.B35_Workplace', 'Workplace', 'COLUMN';
EXEC sp_RENAME 'dbo.FactWorkForce.B37_commute_time', 'commute_time', 'COLUMN';
EXEC sp_RENAME 'dbo.FactWorkForce.G4_Unemployment_Spin', 'Unemployment_Spin', 'COLUMN';
EXEC sp_RENAME 'dbo.FactWorkForce.M_Usually_hours', 'Working_Usually_hours', 'COLUMN';


select * from dbo.FactWorkForce

alter table dbo.FactWorkForce
--alter column ID int
--alter column transport_id int,
--alter column findwork_id int,
--alter column income_id int,
--alter column education int,
--alter column B37_commute_time int,
--alter column Occupation_converted int,
--alter column Age int
--alter column G4_Unemployment_Spin int
--alter column B35_Workplace int
--alter column Region int
--alter column B24_B25_Net_earnings int

--average work hours in day
select round((sum(Working_Usually_hours)/count(*))/5.0,2) avg_hours from dbo.FactWorkForce
where Working_Usually_hours is not null

--people by gender and region

select DimRegion.Region,Sex,count (distinct ID) as num_people from dbo.FactWorkForce
LEft join DimRegion on DimRegion.Region_id=FactWorkForce.Region
group by DimRegion.Region,Sex
order by Region

--where does people work more in cities or villages

select Urban_Rural,count(distinct ID) as num from dbo.FactWorkForce
group by Urban_Rural

--people by occupation

select Occupation,count(*) as num from dbo.FactWorkForce
left join DimOccupation on FactWorkForce.Occupation_converted=DimOccupation.Occupation_ID
group by Occupation
having Occupation is not null
order by num desc


--employ rate

select concat(round(SUM(Employed)/count(ID),2)*100 ,'%') as employ_rate from (
select Distinct ID,Employed from dbo.FactWorkForce)a


--how many hours does each age group work

select age_bins,round((sum(Working_Usually_hours)/count(age_bins))/5.0,2) as avg_hours
from
(

select Distinct ID,case when age < 18 then '<=18'
			when age >=19 and age <=35 then '19-35'
			when age >=36 and Age <=50 then '36-50' 
			when Age >= 51 then '51>=' end as age_bins,
			Working_Usually_hours
			
			From dbo.FactWorkForce
where Working_Usually_hours is not null
) b

group by age_bins
having age_bins is not null


--what is top 3 popular education background
select top 3 education,count( *) as popularity from
(
select Distinct ID,DimEducation.Education as education from dbo.FactWorkForce
join DimEducation on FactWorkForce.Education=DimEducation.Education_Id
)a
group by education

-- which transport does employed or hired people tend to use

select transport,count(*) as num  from (
select distinct ID,FactWorkForce.transport_id,transport from dbo.FactWorkForce
join DimTransport on FactWorkForce.transport_id=DimTransport.transport_id
where Employed=1 or Hired=1
)a
group by transport
order by num desc

--emplyed or hired by Region
select Region,count(*) as num  from (
select distinct ID,DimRegion.Region from dbo.FactWorkForce
join DimRegion on FactWorkForce.Region=DimRegion.Region_id
where Employed=1 or Hired=1
)a
group by Region
order by num desc



--What is the distribution of employed or hired by urban/rural)?
select case when Urban_Rural = 1 then 'city'
						when Urban_Rural = 2 then 'village' end as city_village,
						count(distinct ID) as num
						from dbo.FactWorkForce
where employed = 1 or hired = 1
group by case when Urban_Rural = 1 then 'city'
						when Urban_Rural = 2 then 'village' end 
--How many entries correspond to each gender and age group?
select case when sex = 1 then 'female'
			when sex = 2 then 'male' end as gender,
	   case when Age <18 then '<18'
			when Age between 18 and 40 then '18-40'
			when Age between 41 and 60 then '41-60'
			when Age >60 then '61>' end as Age_bins,
	  count(distinct ID) as num
			from dbo.FactWorkForce
group by case when sex = 1 then 'female'
			when sex = 2 then 'male' end ,
	   case when Age <18 then '<18'
			when Age between 18 and 40 then '18-40'
			when Age between 41 and 60 then '41-60'
			when Age >60 then '61>' end 
			
order by gender,Age_bins;


--What is the percentage of employed individuals in the dataset?
select round(count(case when Employed=1.0 then 1 end)*100/count(*),2) as pct_of_employed from (
select distinct ID,Employed from dbo.FactWorkForce
)a




--How many people are self-employed versus hired employees?
select case when Hired=1.0 then 'Hired'
			when Self_employed=1.0 then 'Self_employed' end as status,
	  count(*) as num
from (
select Distinct ID,Hired,Self_employed  from dbo.FactWorkForce
where Hired=1.0 or Self_employed=1.0
)a
group by case when Hired=1.0 then 'Hired'
			when Self_employed=1.0 then 'Self_employed' end


--What is the average net earnings for employed individuals?

select avg((val_1+val_2)/2) as average from(

select distinct ID,DimNetEarnings.NetEarnings,
				case when CHARINDEX('-',NetEarnings)=0 then SUBSTRING(NetEarnings,1,CHARINDEX(' ',rtrim(ltrim(NetEarnings))))
			         when CHARINDEX('-',NetEarnings)>0 then SUBSTRING(NetEarnings,1,CHARINDEX('-',NetEarnings,1)-1) end as val_1,
		
				
				case when CHARINDEX('-',NetEarnings)>0 
				then SUBSTRING(NetEarnings,CHARINDEX('-',NetEarnings,1)+1,LEN(NetEarnings)-4-(CHARINDEX('-',NetEarnings,1)+1)) else 0 end as val_2
					 


from dbo.FactWorkForce
join DimNetEarnings ON Net_earnings = DimNetEarnings.Earnings_ID
where NetEarnings like '%[0-9]%')a

--What is the distribution of occupations among the employed?
select Occupation,count(distinct ID) as num from dbo.FactWorkForce
join DimOccupation on Occupation_converted=DimOccupation.Occupation_ID
group by Occupation
order by num desc

--What is the percentage of unemployed individuals?
select round(sum(Unemployed)*100/count(*),2)
from (
select Distinct ID,Unemployed   from dbo.FactWorkForce
)a




--Can we analyze the unemployment rate by education level ?
--EDUCATION
select Education,round(sum(Unemployed)*100/count(*),2) as pct
from (
select Distinct ID,Unemployed,DimEducation.Education   from dbo.FactWorkForce
left join DimEducation on FactWorkForce.Education=DimEducation.Education_Id
)a
group by Education
order by pct desc

--What is the average net earnings segmented by region
select distinct Region,avg((val_1+val_2)/2) as average from(

select distinct ID,DimNetEarnings.NetEarnings,
				case when CHARINDEX('-',NetEarnings)=0 then SUBSTRING(NetEarnings,1,CHARINDEX(' ',rtrim(ltrim(NetEarnings))))
			         when CHARINDEX('-',NetEarnings)>0 then SUBSTRING(NetEarnings,1,CHARINDEX('-',NetEarnings,1)-1) end as val_1,
		
				
				case when CHARINDEX('-',NetEarnings)>0 
				then SUBSTRING(NetEarnings,CHARINDEX('-',NetEarnings,1)+1,LEN(NetEarnings)-4-(CHARINDEX('-',NetEarnings,1)+1)) else 0 end as val_2
				,DimRegion.Region	 


from dbo.FactWorkForce
join DimNetEarnings ON Net_earnings = DimNetEarnings.Earnings_ID
 join DimRegion on DimRegion.Region_id=FactWorkForce.Region
where NetEarnings like '%[0-9]%')a
group by Region
order by average desc

--Can we identify any patterns in the type of transport used for commuting based on urban/rural areas and income levels?

select * from (
select Region,transport,count(*) as num,DENSE_RANK() over(partition by Region order by count(*) desc) as rk  from 
(select distinct ID,transport,DimRegion.Region  from dbo.FactWorkForce
left join DimRegion on DimRegion.Region_id=FactWorkForce.Region
left join DimTransport ON DimTransport.transport_id=FactWorkForce.transport_id
)a
group by Region,transport
having transport is not null
)b
where rk <=2

--How do the net earnings and working hours differ between self-employed individuals and hired employees?
select person,avg(val_1+val_2) as average from(

select distinct ID,DimNetEarnings.NetEarnings,
				case when CHARINDEX('-',NetEarnings)=0 then SUBSTRING(NetEarnings,1,CHARINDEX(' ',rtrim(ltrim(NetEarnings))))
			         when CHARINDEX('-',NetEarnings)>0 then SUBSTRING(NetEarnings,1,CHARINDEX('-',NetEarnings,1)-1) end as val_1,
		
				
				case when CHARINDEX('-',NetEarnings)>0 
				then SUBSTRING(NetEarnings,CHARINDEX('-',NetEarnings,1)+1,LEN(NetEarnings)-4-(CHARINDEX('-',NetEarnings,1)+1)) else 0 end as val_2
				,case when Employed=1.0 and Hired=0 and Net_earnings is not null then 'Employed'
					  when Hired=1.0 then 'Hired' end as person


from dbo.FactWorkForce
join DimNetEarnings ON Net_earnings = DimNetEarnings.Earnings_ID

where NetEarnings like '%[0-9]%')a
group by person
order by average desc


alter table DimGetToWorkTime
alter column GetToWorkTime nvarchar(50) collate Georgian_Modern_Sort_CI_AS

--What is the average get to work in minutes time for employed individuals?

 select avg(time_4+times_1+times_2+times_3) as avg_time from (
select distinct ID,
case when GetToWorkTime like N'%წუთ%' then SUBSTRING(ltrim(GetToWorkTime),1,patindex('%[^0-9]%',ltrim(GetToWorkTime))-1) else 0 end as times_1,
case when GetToWorkTime like N'%საათ%' and not GetToWorkTime like N'%წუთ%' then  SUBSTRING(ltrim(GetToWorkTime),1,patindex('%[^0-9]%',ltrim(GetToWorkTime))-1)*60 else 0 end as times_2,
case when GetToWorkTime like N'%წუთ%' and not GetToWorkTime like N'%საათ%' and not GetToWorkTime like N'%ნაკლები%' then SUBSTRING(substring(ltrim(GetToWorkTime),patindex('%[^0-9]%',ltrim(GetToWorkTime)),LEN(GetToWorkTime)),
						patindex('%[0-9]%',substring(ltrim(GetToWorkTime),patindex('%[^0-9]%',ltrim(GetToWorkTime)),LEN(GetToWorkTime)))
						,2) else 0 end as times_3,

case when GetToWorkTime like N'%საათ%' and Not GetToWorkTime like N'%მეტი%' then SUBSTRING(substring(ltrim(GetToWorkTime),patindex('%[^0-9]%',ltrim(GetToWorkTime)),LEN(GetToWorkTime)),
						patindex('%[0-9]%',substring(ltrim(GetToWorkTime),patindex('%[^0-9]%',ltrim(GetToWorkTime)),LEN(GetToWorkTime)))
						,2)*60 else 0 end as time_4
from dbo.FactWorkForce
left join DimGetToWorkTime on FactWorkForce.commute_time=DimGetToWorkTime.Time_to_work_ID
where GetToWorkTime like N'%[0-9]%')b 


--most pensioners by region

select DimRegion.Region,count(*) as pensioners from dbo.FactWorkForce
left join DimRegion on DimRegion.Region_id=FactWorkForce.Region
where outforce_type like N'%პენსიონერი%'
group by DimRegion.Region
order by pensioners desc

--most students by region

select DimRegion.Region,count(*) as students from dbo.FactWorkForce
left join DimRegion on DimRegion.Region_id=FactWorkForce.Region
where outforce_type like N'%სტუდენტი%'
group by DimRegion.Region
order by students desc

--most hometaker by region

select DimRegion.Region,count(*) as hometaker from dbo.FactWorkForce
left join DimRegion on DimRegion.Region_id=FactWorkForce.Region
where outforce_type like N'%დიასახლისი%'
group by DimRegion.Region
order by hometaker desc