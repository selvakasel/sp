

ALTER procedure Age_wise_staff_report      --  Age_wise_staff_report '0-10'
(
@set varchar(max)
)
As
Begin
 if(@set='0-10')
    begin
           
SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,e.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,e.DOB,103)) as age  ,
 case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift FROM EmployeeMaster e	
 INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID and  e.Activeflag=1 AND e.EmployeeID NOT IN (565,559,625,626,644,677,915) 
and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) > 0 AND (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) <= 10
			
	End
else if(@set='11-20')
	 begin
SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,e.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,e.DOB,103)) as age  ,
 case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift FROM EmployeeMaster e	
 INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID and  e.Activeflag=1 AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) > 11 AND (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) <= 20
	End

else if(@set='21-30')
	 begin
SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,e.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,e.DOB,103)) as age  ,
 case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift FROM EmployeeMaster e	
 INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID and  e.Activeflag=1 AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) > 21 AND (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) <= 30
	End


else if(@set='31-40')
	 begin
SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,e.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,e.DOB,103)) as age  ,
 case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift FROM EmployeeMaster e	
 INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID and  e.Activeflag=1 AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) > 31 AND (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) <= 40
	End


else if(@set='41-50')
	 begin
SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,e.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,e.DOB,103)) as age  ,
 case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift FROM EmployeeMaster e	
 INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID and  e.Activeflag=1 AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) > 41 AND (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) <= 50
	End


else if(@set='51-60')
	 begin
SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,e.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,e.DOB,103)) as age  ,
 case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift FROM EmployeeMaster e	
 INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID and  e.Activeflag=1 AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) > 51 AND (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) <= 60
	End


else if(@set='61-70')
	 begin
SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,e.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,e.DOB,103)) as age  ,
 case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift FROM EmployeeMaster e	
 INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID and  e.Activeflag=1 AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) > 61 AND (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) <= 70
	End


else if(@set='71-80')
	 begin
SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,e.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,e.DOB,103)) as age  ,
 case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift FROM EmployeeMaster e	
 INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID and  e.Activeflag=1 AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) > 71 AND (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) <= 80
	End



else if(@set='81-90')
	 begin
SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,e.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,e.DOB,103)) as age  ,
 case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift FROM EmployeeMaster e	
 INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID and  e.Activeflag=1 AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) > 81 AND (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) <= 90
	End

else if(@set='91-100')
	 begin
SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,e.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,e.DOB,103)) as age  ,
 case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift FROM EmployeeMaster e	
 INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID and  e.Activeflag=1 AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) > 91 AND (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) <= 100
	End

--else 
--	 begin
--			 SELECT a.FirstName ,case a.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,case b.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift 
-- ,a.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,a.DOB,103)) as age FROM EmployeeMaster a INNER JOIN OfficialDetails b ON a.EmployeeID = b.EmployeeID  where a.Activeflag=1 
--and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,DOB,105))) > 100
--	End



			End