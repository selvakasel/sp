

ALTER PROCEDURE New_resign_Termin_report -- New_resign_Termin_report  'NewJoining' ,'2015'
	(
	@set VARCHAR(max)
	,@Fromdate VARCHAR(max) = ''
	
	)
AS
BEGIN
	IF (
			@fromdate = ''
			
			)
	BEGIN
	  IF (@set = 'NewJoining')
		BEGIN
			SELECT o.EmployeeID,e.FirstName,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
            e.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,e.DOB,103)) as age,
            CONVERT(CHAR(4),o.DOJ, 100) + CONVERT(CHAR(4), o.DOJ, 120) as Month,
            case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift,d.DepartmentName
            FROM OfficialDetails o	INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
            INNER JOIN department d ON d.DepartmentID = o.DepartmentId
            WHERE o.EmployeeID NOT IN (565,559,625,626,644,677,915) AND  YEAR(o.DOJ) = YEAR(GETDATE()) and d.Activeflag=1
			And e.Activeflag=1
		END
	 ELSE IF (@set = 'Resigned')
	    BEGIN
			select e.FirstName,e.EmployeeID,d.DepartmentName,t.Type,
            CONVERT(CHAR(4),t.Relivingdate, 100) + CONVERT(CHAR(4), t.Relivingdate, 120) as Month,
            case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift
            from dbo_EmployeeTermination t inner join EmployeeMaster e on t.EmployeeID = e.EmployeeID
            INNER JOIN OfficialDetails o ON o.EmployeeID = e.EmployeeID INNER JOIN department d ON d.DepartmentID = o.DepartmentId
            where type ='Resigned' and exitflag = 0 and e.Activeflag=0 AND o.EmployeeID NOT IN (565,559,625,626,644,677,915)
		    AND  YEAR(t.Relivingdate) = YEAR(GETDATE()) and d.Activeflag=1
		END
	ELSE IF (@set = 'Terminated')
		BEGIN
		  select e.FirstName,e.EmployeeID,d.DepartmentName,t.Type,
          case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift,
          CONVERT(CHAR(4),t.Relivingdate, 100) + CONVERT(CHAR(4), t.Relivingdate, 120) as Month  from dbo_EmployeeTermination t 
          inner join EmployeeMaster e on t.EmployeeID = e.EmployeeID  INNER JOIN OfficialDetails o ON o.EmployeeID = e.EmployeeID
          INNER JOIN department d ON d.DepartmentID = o.DepartmentId  where type ='Terminated' and exitflag = 0 and e.Activeflag=0 
          AND o.EmployeeID NOT IN (565,559,625,626,644,677,915)  and d.Activeflag=1  AND  YEAR(t.Relivingdate) = YEAR(GETDATE())
		END
	ELSE IF (@set = 'Discontinued')
		BEGIN
		  select e.FirstName,e.EmployeeID,d.DepartmentName,t.Type,
          CONVERT(CHAR(4),t.Relivingdate, 100) + CONVERT(CHAR(4), t.Relivingdate, 120) as Month,
          case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift
          from dbo_EmployeeTermination t  inner join EmployeeMaster e on t.EmployeeID = e.EmployeeID
          INNER JOIN OfficialDetails o ON o.EmployeeID = e.EmployeeID INNER JOIN department d ON d.DepartmentID = o.DepartmentId
          where type ='Discontinued' and exitflag = 0 and e.Activeflag=0  AND o.EmployeeID NOT IN (565,559,625,626,644,677,915)
		  AND  YEAR(t.Relivingdate) = YEAR(GETDATE())  and d.Activeflag=1 
		END
					
	END
	ELSE
	BEGIN
	   IF (@set = 'NewJoining')
		BEGIN
			SELECT o.EmployeeID,e.FirstName,case e.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
            e.DOB,DATEPART(YEAR,getdate())-DATEPART(YEAR,convert(date,e.DOB,103)) as age,
            CONVERT(CHAR(4),o.DOJ, 100) + CONVERT(CHAR(4), o.DOJ, 120) as Month,
            case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift,d.DepartmentName
            FROM OfficialDetails o	INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
            INNER JOIN department d ON d.DepartmentID = o.DepartmentId
            WHERE o.EmployeeID NOT IN (565,559,625,626,644,677,915) AND YEAR(o.DOJ) = @Fromdate  and d.Activeflag=1 and e.Activeflag=1

		END
	 ELSE IF (@set = 'Resigned')
	    BEGIN
			select e.FirstName,e.EmployeeID,d.DepartmentName,t.Type,
            CONVERT(CHAR(4),t.Relivingdate, 100) + CONVERT(CHAR(4), t.Relivingdate, 120) as Month,
            case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift
            from dbo_EmployeeTermination t inner join EmployeeMaster e on t.EmployeeID = e.EmployeeID
            INNER JOIN OfficialDetails o ON o.EmployeeID = e.EmployeeID INNER JOIN department d ON d.DepartmentID = o.DepartmentId
            where type ='Resigned' and exitflag = 0 and e.Activeflag=0 AND o.EmployeeID NOT IN (565,559,625,626,644,677,915)
		    AND YEAR(t.Relivingdate) = @Fromdate  and d.Activeflag=1
		END
	ELSE IF (@set = 'Terminated')
		BEGIN
		  select e.FirstName,e.EmployeeID,d.DepartmentName,t.Type,
          case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift,
          CONVERT(CHAR(4),t.Relivingdate, 100) + CONVERT(CHAR(4), t.Relivingdate, 120) as Month  from dbo_EmployeeTermination t 
          inner join EmployeeMaster e on t.EmployeeID = e.EmployeeID  INNER JOIN OfficialDetails o ON o.EmployeeID = e.EmployeeID
          INNER JOIN department d ON d.DepartmentID = o.DepartmentId  where type ='Terminated' and exitflag = 0 and e.Activeflag=0 
          AND o.EmployeeID NOT IN (565,559,625,626,644,677,915)  and d.Activeflag=1  AND YEAR(t.Relivingdate) = @Fromdate 
		END
	ELSE IF (@set = 'Discontinued')
		BEGIN
		  select e.FirstName,e.EmployeeID,d.DepartmentName,t.Type,
          CONVERT(CHAR(4),t.Relivingdate, 100) + CONVERT(CHAR(4), t.Relivingdate, 120) as Month,
          case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift
          from dbo_EmployeeTermination t  inner join EmployeeMaster e on t.EmployeeID = e.EmployeeID
          INNER JOIN OfficialDetails o ON o.EmployeeID = e.EmployeeID INNER JOIN department d ON d.DepartmentID = o.DepartmentId
          where type ='Discontinued' and exitflag = 0 and e.Activeflag=0  AND o.EmployeeID NOT IN (565,559,625,626,644,677,915)
		  AND YEAR(t.Relivingdate) = @Fromdate  and d.Activeflag=1
		END
				
	END
END
