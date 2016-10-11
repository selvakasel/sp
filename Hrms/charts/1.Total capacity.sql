ALTER PROCEDURE total_capacity
AS
BEGIN
	DECLARE @totalstrength BIGINT
	DECLARE @vacancy BIGINT
	DECLARE @listOfID TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	BEGIN
		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT COUNT(*)
				FROM EmployeeMaster E
				INNER JOIN OfficialDetails o ON o.EmployeeID = E.EmployeeID
				WHERE E.Activeflag = 1
					AND o.Activeflag = 1
					AND o.Shift = 1
					AND E.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'General'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT COUNT(*)
				FROM EmployeeMaster E
				INNER JOIN OfficialDetails o ON o.EmployeeID = E.EmployeeID
				WHERE E.Activeflag = 1
					AND o.Activeflag = 1
					AND o.Shift = 2
					AND E.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Morning'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT COUNT(*)
				FROM EmployeeMaster E
				INNER JOIN OfficialDetails o ON o.EmployeeID = E.EmployeeID
				WHERE E.Activeflag = 1
					AND o.Activeflag = 1
					AND o.Shift = 3
					AND E.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
			,'Evening'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(64)
			,'Capacity'
			)

		SET @totalstrength = (
				SELECT COUNT(*)
				FROM EmployeeMaster E
				INNER JOIN OfficialDetails o ON o.EmployeeID = E.EmployeeID
				WHERE E.Activeflag = 1
					AND o.Activeflag = 1
					AND E.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
				)
		SET @vacancy = 64 - @totalstrength

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(@vacancy)
			,'Vacancy'
			)

		SELECT *
		FROM @listOfID
	END
END
	--Alter PROCEDURE total_capacity (
	--	@Fromdate VARCHAR(max) = ''
	--	,@Todate VARCHAR(max) = ''
	--	)
	--AS
	--BEGIN
	--	DECLARE @listOfID TABLE (
	--		CountVal BIGINT
	--		,NAME VARCHAR(20)
	--		)
	--	IF (
	--			@Fromdate = ''
	--			AND @Todate = ''
	--			)
	--	BEGIN
	--		INSERT INTO @listOfID (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				select  count (b.Shift) as general from EmployeeMaster a INNER JOIN OfficialDetails b 
	--	         on a.EmployeeID = b.EmployeeID where b.Activeflag = 1 and a.Activeflag = 1 and  b.Shift = 1
	--				)
	--			,'General'
	--			)
	--		INSERT INTO @listOfID (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--		   select count (b.Shift) as morning  from EmployeeMaster a INNER JOIN OfficialDetails b 
	--	on a.EmployeeID = b.EmployeeID where b.Activeflag = 1 and a.Activeflag = 1 and  b.Shift = 2 
	--				)
	--			,'Morning'
	--			)
	--		INSERT INTO @listOfID (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				select  count (b.Shift) as evening  from EmployeeMaster a INNER JOIN OfficialDetails b 
	--	on a.EmployeeID = b.EmployeeID where b.Activeflag = 1 and a.Activeflag = 1 and  b.Shift = 3 
	--				)
	--			,'Evening'
	--			)
	--		INSERT INTO @listOfID (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				64
	--				)
	--			,'Total'
	--			)
	--		SELECT *
	--		FROM @listOfID
	--	END
	--	ELSE
	--	BEGIN
	--		INSERT INTO @listOfID (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				select  count (b.Shift) as general from EmployeeMaster a INNER JOIN OfficialDetails b 
	--	         on a.EmployeeID = b.EmployeeID where b.Activeflag = 1 and a.Activeflag = 1 and  b.Shift = 1
	--				and (
	--						a.Createddate BETWEEN @Fromdate
	--							AND @Todate
	--						)
	--				)
	--			,'General'
	--			)
	--		INSERT INTO @listOfID (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--					select count (b.Shift) as morning  from EmployeeMaster a INNER JOIN OfficialDetails b 
	--	on a.EmployeeID = b.EmployeeID where b.Activeflag = 1 and a.Activeflag = 1 and  b.Shift = 2 
	--				and (
	--						a.Createddate  BETWEEN @Fromdate
	--							AND @Todate
	--						)
	--				)
	--			,'Morning'
	--			)
	--		INSERT INTO @listOfID (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				select  count (b.Shift) as evening  from
	--        EmployeeMaster a INNER JOIN OfficialDetails b 
	--	on a.EmployeeID = b.EmployeeID where b.Activeflag = 1 and a.Activeflag = 1 and  b.Shift = 3 
	--				and (
	--						a.CreatedDate BETWEEN @Fromdate
	--							AND @Todate
	--						)
	--				)
	--			,'Evening'
	--			)
	--			INSERT INTO @listOfID (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				64
	--				)
	--			,'Total'
	--			)
	--		SELECT *
	--		FROM @listOfID
	--	END
	--END
