ALTER PROCEDURE Age_wise_staff
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM EmployeeMaster e
				INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID
				WHERE e.Activeflag = 1
					AND e.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) > 0
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) <= 10
				)
			,'0-10'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM EmployeeMaster e
				INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID
				WHERE e.Activeflag = 1
					AND e.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) > 11
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) <= 20
				)
			,'11-20'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM EmployeeMaster e
				INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID
				WHERE e.Activeflag = 1
					AND e.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) > 21
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) <= 30
				)
			,'21-30'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM EmployeeMaster e
				INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID
				WHERE e.Activeflag = 1
					AND e.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) > 31
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) <= 40
				)
			,'31-40'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM EmployeeMaster e
				INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID
				WHERE e.Activeflag = 1
					AND e.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) > 41
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) <= 50
				)
			,'41-50'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM EmployeeMaster e
				INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID
				WHERE e.Activeflag = 1
					AND e.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) > 51
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) <= 60
				)
			,'51-60'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM EmployeeMaster e
				INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID
				WHERE e.Activeflag = 1
					AND e.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) > 61
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) <= 70
				)
			,'61-70'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM EmployeeMaster e
				INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID
				WHERE e.Activeflag = 1
					AND e.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) > 71
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) <= 80
				)
			,'71-80'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM EmployeeMaster e
				INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID
				WHERE e.Activeflag = 1
					AND e.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) > 81
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) <= 90
				)
			,'81-90'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM EmployeeMaster e
				INNER JOIN OfficialDetails o ON e.EmployeeID = o.EmployeeID
				WHERE e.Activeflag = 1
					AND e.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) > 91
					AND (year(CONVERT(DATETIME, GETDATE(), 105)) - year(CONVERT(DATETIME, e.DOB, 105))) <= 100
				)
			,'91-100'
			)

		--INSERT INTO @listOfIDs (
		--	CountVal
		--	,NAME
		--	)
		--VALUES (
		--	(
		--		  SELECT  count(a.EmployeeID) FROM EmployeeMaster a INNER JOIN OfficialDetails b ON a.EmployeeID = b.EmployeeID   where a.Activeflag=1
		--and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,e.DOB,105))) > 100
		--		)
		--	,'100+'
		--	)
		SELECT *
		FROM @listOfIDs
	END
END
	--- SELECT  count(EmployeeID) FROM EmployeeMaster where Activeflag=1
	--	and (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,e.DOB,105))) > 0
	--	AND (year(CONVERT(datetime,GETDATE(),105)) - year(CONVERT(datetime,e.DOB,105))) <= 10
