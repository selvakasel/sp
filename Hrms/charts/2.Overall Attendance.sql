ALTER PROCEDURE Overall_attendance --  Overall_attendance '2016-03-01 00:00:00.000'
	(@Fromdate VARCHAR(max) = '')
AS
BEGIN
	DECLARE @listOfID TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	IF (@Fromdate = '')
	BEGIN
		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT DISTINCT count(*)
				FROM AttendenceEntrynew a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = SUBSTRING(convert(VARCHAR, b.Employeecode), 8, 4)
				WHERE b.Activeflag = 1
					AND a.STATUS = 1
					AND a.Attendancedate = GETDATE()
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
			,'Present'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT DISTINCT count(*)
				FROM AttendenceEntrynew a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = SUBSTRING(convert(VARCHAR, b.Employeecode), 8, 4)
				WHERE b.Activeflag = 1
					AND a.STATUS = 2
					AND a.Attendancedate = GETDATE()
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
			,'Absent'
			)

		SELECT *
		FROM @listOfID
	END
	ELSE
	BEGIN
		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT DISTINCT count(*)
				FROM AttendenceEntrynew a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = SUBSTRING(convert(VARCHAR, b.Employeecode), 8, 4)
				WHERE b.Activeflag = 1
					AND a.STATUS = 1
					AND a.Attendancedate = @Fromdate
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
			,'Present'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT DISTINCT count(*)
				FROM AttendenceEntrynew a
				INNER JOIN EmployeeMaster b ON a.EmployeeID = SUBSTRING(convert(VARCHAR, b.Employeecode), 8, 4)
				WHERE b.Activeflag = 1
					AND a.STATUS = 2
					AND a.Attendancedate = @Fromdate
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
			,'Absent'
			)

		SELECT *
		FROM @listOfID
	END
END
