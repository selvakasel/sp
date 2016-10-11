
ALTER PROCEDURE Total_salary_amount_Report   --   Total_salary_amount_Report '2015'

 ( 
	@Fromdate VARCHAR(max) = ''
	
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (	Amount BIGINT,NAME VARCHAR(20))

	IF (@Fromdate = '')
		
	BEGIN



		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 1 AND YEAR(CreatedDate) = YEAR(GETDATE()))
				 AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'January'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 2 AND YEAR(CreatedDate) = YEAR(GETDATE()))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'February'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
	             (

			    select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 2 AND YEAR(CreatedDate) = YEAR(GETDATE()))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'March'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 4 AND YEAR(CreatedDate) = YEAR(GETDATE()))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'April'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 5 AND YEAR(CreatedDate) = YEAR(GETDATE()))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'May'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 6 AND YEAR(CreatedDate) = YEAR(GETDATE()))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'June'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 7 AND YEAR(CreatedDate) = YEAR(GETDATE()))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'July'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 8 AND YEAR(CreatedDate) = YEAR(GETDATE()))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'August'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 9 AND YEAR(CreatedDate) = YEAR(GETDATE()))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'September'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			( select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 10 AND YEAR(CreatedDate) = YEAR(GETDATE()))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'October'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 11 AND YEAR(CreatedDate) = YEAR(GETDATE()))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'November'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 12 AND YEAR(CreatedDate) = YEAR(GETDATE()))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'December'
			)

		SELECT *
		FROM @listOfIDs
	END
	ELSE
	BEGIN
		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
					 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 1 AND YEAR(CreatedDate) = YEAR(@Fromdate))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'January'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
					 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 2 AND YEAR(CreatedDate) = YEAR(@Fromdate))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'February'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
					 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 3 AND YEAR(CreatedDate) = YEAR(@Fromdate))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'March'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
					 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 4 AND YEAR(CreatedDate) = YEAR(@Fromdate))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'April'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
					 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 5 AND YEAR(CreatedDate) =YEAR(@Fromdate))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'May'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
					 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 6 AND YEAR(CreatedDate) = YEAR(@Fromdate))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'June'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
					 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 7 AND YEAR(CreatedDate) = YEAR(@Fromdate))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'July'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
					 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 8 AND YEAR(CreatedDate) = YEAR(@Fromdate))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'August'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
					 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 9 AND YEAR(CreatedDate) = YEAR(@Fromdate))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'September'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
					 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 10 AND YEAR(CreatedDate) = YEAR(@Fromdate))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'October'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
					 select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 11 AND YEAR(CreatedDate) = YEAR(@Fromdate))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)
				)
			
			,'November'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			( select sum(NetSalary) as Amount from SALARYGEN	Where (MONTH(CreatedDate) = 12 AND YEAR(CreatedDate) = YEAR(@Fromdate))
				AND EmployeeID NOT IN (565,559,625,626,644,677,915)	
				)
			
			,'December'
			)

		SELECT *
		FROM @listOfIDs
	END
END



















--Alter PROCEDURE Total_salary_amount_Report   -- Total_salary_amount_Report 'Jan' 

-- ( 
--	@set varchar(max)
	
--	)
--AS
--BEGIN
	
	

--if(@set='Jan')	
--	BEGIN
--         select sum(NetSalary) as Amount,'Jan'as Month from SALARYGEN	Where (MONTH(CreatedDate) = 1 AND YEAR(CreatedDate) = YEAR(GETDATE()))
--	end			
--else if(@set='Feb')	
--	BEGIN
--         select sum(NetSalary) as Amount,'Feb'as Month from SALARYGEN	Where (MONTH(CreatedDate) = 2 AND YEAR(CreatedDate) = YEAR(GETDATE()))
--	end			
--else if(@set='Mar')	
--	BEGIN
--         select sum(NetSalary) as Amount ,'Mar'as Month from SALARYGEN	Where (MONTH(CreatedDate) = 3 AND YEAR(CreatedDate) = YEAR(GETDATE()))
--	end
--else if(@set='Apr')	
--	BEGIN
--         select sum(NetSalary) as Amount,'Apr'as Month from SALARYGEN	Where (MONTH(CreatedDate) = 4 AND YEAR(CreatedDate) = YEAR(GETDATE()))
--	end				
--else if(@set='May')	
--	BEGIN
--         select sum(NetSalary) as Amount,'May'as Month from SALARYGEN	Where (MONTH(CreatedDate) = 5 AND YEAR(CreatedDate) = YEAR(GETDATE()))
--	end
--else if(@set='Jun')	
--	BEGIN
--         select sum(NetSalary) as Amount,'Jun'as Month from SALARYGEN	Where (MONTH(CreatedDate) = 6 AND YEAR(CreatedDate) = YEAR(GETDATE()))
--	end
--else if(@set='Jul')	
--	BEGIN
--         select sum(NetSalary) as Amount,'Jul'as Month from SALARYGEN	Where (MONTH(CreatedDate) = 7 AND YEAR(CreatedDate) = YEAR(GETDATE()))
--	end			
--else if(@set='Aug')	
--	BEGIN
--         select sum(NetSalary) as Amount,'Aug'as Month from SALARYGEN	Where (MONTH(CreatedDate) = 8 AND YEAR(CreatedDate) = YEAR(GETDATE()))
--	end
--else if(@set='Sep')	
--	BEGIN
--         select sum(NetSalary) as Amount,'Sep'as Month from SALARYGEN	Where (MONTH(CreatedDate) = 9 AND YEAR(CreatedDate) = YEAR(GETDATE()))
--	end
--else if(@set='Oct')	
--	BEGIN
--         select sum(NetSalary) as Amount,'Oct'as Month from SALARYGEN	Where (MONTH(CreatedDate) = 10 AND YEAR(CreatedDate) = YEAR(GETDATE()))
--	end
--else if(@set='Nov')	
--	BEGIN
--         select sum(NetSalary) as Amount,'Nov'as Month from SALARYGEN	Where (MONTH(CreatedDate) = 11 AND YEAR(CreatedDate) = YEAR(GETDATE()))
--	end
--else 
--	BEGIN
--         select sum(NetSalary) as Amount,'Dec'as Month from SALARYGEN	Where (MONTH(CreatedDate) = 11 AND YEAR(CreatedDate) = YEAR(GETDATE()))
--	end
--  end
		

		
	