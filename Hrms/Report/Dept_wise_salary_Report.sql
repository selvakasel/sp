


Alter procedure Dept_wise_salary_Report  -- Dept_wise_salary_Report 'Silver Light' , '2015'
(
@DepartmentName varchar(max)
,@Fromdate VARCHAR(max) = ''
)
AS
BEGIN
   IF (@Fromdate = ''
    )
BEGIN
select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
 AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
   and d.DepartmentName = @DepartmentName  AND  YEAR(s.Createddate) = YEAR(GETDATE())
END
  ELSE
BEGIN
  select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
 AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
 and d.DepartmentName = @DepartmentName  AND YEAR(s.Createddate) = @Fromdate
END
END


--ALTER PROCEDURE Dept_wise_salary_Report   --   Dept_wise_salary_Report 'Silver Light','jan'  , '2015'
--(  
--  @DepartmentName varchar(max)
-- ,@set varchar(max)
-- ,@Fromdate varchar(max) = ''
--)
--AS
--BEGIN


--	IF (@Fromdate = '')
		
--	BEGIN

--		    if(@set='Jan')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 1 AND YEAR(s.CreatedDate) = YEAR(GETDATE()))
--			END	 
--			if(@set='Feb')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 2 AND YEAR(s.CreatedDate) = YEAR(GETDATE()))
--			END	 
--			if(@set='Mar')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 3 AND YEAR(s.CreatedDate) = YEAR(GETDATE()))
--			END	 
--			if(@set='Apr')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 4 AND YEAR(s.CreatedDate) = YEAR(GETDATE()))
--			END	 
--			if(@set='May')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 5 AND YEAR(s.CreatedDate) = YEAR(GETDATE()))
--			END	 
--			if(@set='Jun')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 6 AND YEAR(s.CreatedDate) = YEAR(GETDATE()))
--			END	 
--			if(@set='Jul')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 7 AND YEAR(s.CreatedDate) = YEAR(GETDATE()))
--			END	 
--			if(@set='Aug')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 8 AND YEAR(s.CreatedDate) = YEAR(GETDATE()))
--			END	 
--			if(@set='sep')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 9 AND YEAR(s.CreatedDate) = YEAR(GETDATE()))
--			END	 
--			if(@set='Oct')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 10 AND YEAR(s.CreatedDate) = YEAR(GETDATE()))
--			END	 
--			if(@set='Nov')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 11 AND YEAR(s.CreatedDate) = YEAR(GETDATE()))
--			END	 
--			if(@set='Dec')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 12 AND YEAR(s.CreatedDate) = YEAR(GETDATE()))
--			END	 

--	end
--	ELSE
--	BEGIN
--	  if(@set='Jan')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 1 AND YEAR(s.CreatedDate) =  YEAR(@Fromdate))
--			END	 
--			if(@set='Feb')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 2 AND YEAR(s.CreatedDate) =  YEAR(@Fromdate))
--			END	 
--			if(@set='Mar')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 3 AND YEAR(s.CreatedDate) =  YEAR(@Fromdate))
--			END	 
--			if(@set='Apr')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 4 AND YEAR(s.CreatedDate) =  YEAR(@Fromdate))
--			END	 
--			if(@set='May')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 5 AND YEAR(s.CreatedDate) =  YEAR(@Fromdate))
--			END	 
--			if(@set='Jun')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 6 AND YEAR(s.CreatedDate) =  YEAR(@Fromdate))
--			END	 
--			if(@set='Jul')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 7 AND YEAR(s.CreatedDate) =  YEAR(@Fromdate))
--			END	 
--			if(@set='Aug')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 8 AND YEAR(s.CreatedDate) =  YEAR(@Fromdate))
--			END	 
--			if(@set='sep')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 9 AND YEAR(s.CreatedDate) =  YEAR(@Fromdate))
--			END	 
--			if(@set='Oct')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 10 AND YEAR(s.CreatedDate) =  YEAR(@Fromdate))
--			END	 
--			if(@set='Nov')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 11 AND YEAR(s.CreatedDate) =  YEAR(@Fromdate))
--			END	 
--			if(@set='Dec')
--		   begin
		
--			select s.Employeecode, s.EmployeeName as Name,d.DepartmentName,s.NetSalary as Salary ,
--            CONVERT(CHAR(4),s.Createddate, 100) + CONVERT(CHAR(4), s.Createddate, 120) as Month FROM salarygen s
--            INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID	INNER JOIN department d ON d.DepartmentID = o.DepartmentId
--            AND o.EmployeeID NOT IN (565,559,625,626,644,677,915) and d.Activeflag = 1  and s.Activeflag = 1
--            and d.DepartmentName = @DepartmentName	And (MONTH(s.CreatedDate) = 12 AND YEAR(s.CreatedDate) =  YEAR(@Fromdate))
--			END	 
		
--	 end
	 		
--		end
	

