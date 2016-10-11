ALTER procedure Experience_Details_report--    Experience_Details_report '2-3'
(
@set varchar(max)
)
As
Begin
 if(@set='0-1')
    begin
           
         SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
              case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift ,
              o.DOJ FROM OfficialDetails o INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID where e.Activeflag=1
			  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
              AND (year(GETDATE()) - year(o.DOJ)) > 0	AND (year(GETDATE()) - year(o.DOJ)) <= 1
			
	End
else if(@set='1-2')
	 begin
			 SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
              case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift ,
              o.DOJ FROM OfficialDetails o INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID where e.Activeflag=1
			  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
				AND (year(GETDATE()) - year(o.DOJ)) > 1	AND (year(GETDATE()) - year(o.DOJ)) <= 2
	End

else if(@set='2-3')
	 begin
			 SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
              case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift ,
              o.DOJ FROM OfficialDetails o INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID where e.Activeflag=1
			  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
				AND (year(GETDATE()) - year(o.DOJ)) > 2	AND (year(GETDATE()) - year(o.DOJ)) <= 3
	End


else if(@set='3-4')
	 begin
			 SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
              case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift ,
              o.DOJ FROM OfficialDetails o INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID where e.Activeflag=1
			  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
				AND (year(GETDATE()) - year(o.DOJ)) > 3	AND (year(GETDATE()) - year(o.DOJ)) <= 4
	End


else if(@set='4-5')
	 begin
			 SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
              case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift ,
              o.DOJ FROM OfficialDetails o INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID where e.Activeflag=1
			  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
				AND (year(GETDATE()) - year(o.DOJ)) > 4	AND (year(GETDATE()) - year(o.DOJ)) <= 5
	End


else if(@set='5-6')
	 begin
			 SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
              case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift ,
              o.DOJ FROM OfficialDetails o INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID where e.Activeflag=1
			  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
				AND (year(GETDATE()) - year(o.DOJ)) > 5	AND (year(GETDATE()) - year(o.DOJ)) <= 6
	End


else if(@set='6-7')
	 begin
			 SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
              case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift ,
              o.DOJ FROM OfficialDetails o INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID where e.Activeflag=1
			  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
				AND (year(GETDATE()) - year(o.DOJ)) > 6	AND (year(GETDATE()) - year(o.DOJ)) <= 7
	End


else if(@set='7-8')
	 begin
			 SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
              case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift ,
              o.DOJ FROM OfficialDetails o INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID where e.Activeflag=1
			  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
				AND (year(GETDATE()) - year(o.DOJ)) > 7	AND (year(GETDATE()) - year(o.DOJ)) <= 8
	End



else if(@set='8-9')
	 begin
			 SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
              case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift ,
              o.DOJ FROM OfficialDetails o INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID where e.Activeflag=1
			  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
				AND (year(GETDATE()) - year(o.DOJ)) > 8	AND (year(GETDATE()) - year(o.DOJ)) <= 9
	End

else if(@set='9-10')
	 begin
			 SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
              case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift ,
              o.DOJ FROM OfficialDetails o INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID where e.Activeflag=1
			  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
				AND (year(GETDATE()) - year(o.DOJ)) > 9	AND (year(GETDATE()) - year(o.DOJ)) <= 10
	End

else 
	 begin
			 SELECT e.FirstName ,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
              case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift ,
              o.DOJ FROM OfficialDetails o INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID where e.Activeflag=1
			  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
				AND (year(GETDATE()) - year(o.DOJ)) > 10	
	End



			End