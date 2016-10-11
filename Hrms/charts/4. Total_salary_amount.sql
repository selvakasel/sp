ALTER PROCEDURE Total_salary_amount -- Total_salary_amount '2016'
	(@Fromdate VARCHAR(max) = '')
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		Amount BIGINT
		,NAME VARCHAR(20)
		)

	IF (@Fromdate = '')
	BEGIN
		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 1
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 2
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 3
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 4
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 5
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 6
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 7
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 8
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 9
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 10
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 11
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 12
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Dec'
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
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 1
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 2
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 3
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 4
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 5
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 6
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 7
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 8
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 9
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 10
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 11
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			Amount
			,NAME
			)
		VALUES (
			(
				SELECT sum(NetSalary) AS Amount
				FROM SALARYGEN
				WHERE (
						MONTH(CreatedDate) = 12
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
					AND EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
END
