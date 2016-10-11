ALTER PROCEDURE Experience_Details
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
				FROM OfficialDetails a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = b.EmployeeID
				WHERE b.Activeflag = 1
					AND (year(GETDATE()) - year(DOJ)) > 0
					AND (year(GETDATE()) - year(a.DOJ)) <= 1
					AND b.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'0-1'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = b.EmployeeID
				WHERE b.Activeflag = 1
					AND (year(GETDATE()) - year(DOJ)) > 1
					AND (year(GETDATE()) - year(a.DOJ)) <= 2
					AND b.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'1-2'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = b.EmployeeID
				WHERE b.Activeflag = 1
					AND (year(GETDATE()) - year(DOJ)) > 2
					AND (year(GETDATE()) - year(a.DOJ)) <= 3
					AND b.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'2-3'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = b.EmployeeID
				WHERE b.Activeflag = 1
					AND (year(GETDATE()) - year(DOJ)) > 3
					AND (year(GETDATE()) - year(a.DOJ)) <= 4
					AND b.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'3-4'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = b.EmployeeID
				WHERE b.Activeflag = 1
					AND (year(GETDATE()) - year(DOJ)) > 4
					AND (year(GETDATE()) - year(DOJ)) <= 5
					AND b.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'4-5'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = b.EmployeeID
				WHERE b.Activeflag = 1
					AND (year(GETDATE()) - year(DOJ)) > 5
					AND (year(GETDATE()) - year(a.DOJ)) <= 6
					AND b.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'5-6'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = b.EmployeeID
				WHERE b.Activeflag = 1
					AND (year(GETDATE()) - year(DOJ)) > 6
					AND (year(GETDATE()) - year(a.DOJ)) <= 7
					AND b.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'6-7'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = b.EmployeeID
				WHERE b.Activeflag = 1
					AND (year(GETDATE()) - year(DOJ)) > 7
					AND (year(GETDATE()) - year(a.DOJ)) <= 8
					AND b.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'7-8'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = b.EmployeeID
				WHERE b.Activeflag = 1
					AND (year(GETDATE()) - year(DOJ)) > 8
					AND (year(GETDATE()) - year(a.DOJ)) <= 9
					AND b.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'8-9'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = b.EmployeeID
				WHERE b.Activeflag = 1
					AND (year(GETDATE()) - year(DOJ)) > 9
					AND (year(GETDATE()) - year(a.DOJ)) <= 10
					AND b.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'9-10'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = b.EmployeeID
				WHERE b.Activeflag = 1
					AND (year(GETDATE()) - year(a.DOJ)) > 10
					AND b.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'10+'
			)

		SELECT *
		FROM @listOfIDs
	END
END
