
Alter PROCEDURE going_to_resign 

AS
BEGIN
	DECLARE @listOfID TABLE (CountVal BIGINT,NAME VARCHAR(20))

	
	
	 
		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				
             select  count(distinct a.EmployeeID) as Resign  from dbo_EmployeeTermination a inner join OfficialDetails b
                 on a.EmployeeID = b.EmployeeID where a.Activeflag = 1 and a.exitflag= 1 and b.Shift=1 
				
						and month(a.Createddate) = month(GETDATE())
						
				)
			,'General'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
		  
            select  count(distinct a.EmployeeID) as Resign from dbo_EmployeeTermination a inner join OfficialDetails b on
		    a.EmployeeID = b.EmployeeID where a.Activeflag = 1 and a.exitflag= 1 and b.Shift=2 
			
				and month(a.Createddate) = month(GETDATE()) 
				)
			,'Morning'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				
             select  count(distinct a.EmployeeID) as Resign  from dbo_EmployeeTermination a inner join OfficialDetails b on
			 a.EmployeeID = b.EmployeeID where a.Activeflag = 1 and a.exitflag= 1 and b.Shift=3  

			 	and month(a.Createddate) = month(GETDATE())
				)
			,'Evening'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				
             select  count(distinct a.EmployeeID) as Resign from dbo_EmployeeTermination a inner join OfficialDetails b on
			 a.EmployeeID = b.EmployeeID where a.Activeflag = 1 and a.exitflag= 1  
			 and month(a.Createddate) = month(GETDATE())
				)
			,'Total'
			)

		SELECT *
		FROM @listOfID
	END

