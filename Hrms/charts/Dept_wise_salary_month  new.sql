ALTER PROCEDURE Dept_wise_salary_month --   Dept_wise_salary_month '2016' , 'Hms'
	(
	@Fromdate VARCHAR(max) = ''
	,@DepartmentName VARCHAR(max)
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	IF (@Fromdate = '')
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.CreatedDate) = 1)
					AND (YEAR(s.Createddate) = YEAR(GETDATE()))
					AND o.EmployeeID NOT IN (
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
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 2)
					AND (YEAR(s.Createddate) = YEAR(GETDATE()))
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 3)
					AND (YEAR(s.Createddate) = YEAR(GETDATE()))
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 4)
					AND (YEAR(s.Createddate) = YEAR(GETDATE()))
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 5)
					AND (YEAR(s.Createddate) = YEAR(GETDATE()))
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 6)
					AND (YEAR(s.Createddate) = YEAR(GETDATE()))
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 7)
					AND (YEAR(s.Createddate) = YEAR(GETDATE()))
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 8)
					AND (YEAR(s.Createddate) = YEAR(GETDATE()))
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 9)
					AND (YEAR(s.Createddate) = YEAR(GETDATE()))
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 10)
					AND (YEAR(s.Createddate) = YEAR(GETDATE()))
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 11)
					AND (YEAR(s.Createddate) = YEAR(GETDATE()))
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 12)
					AND (YEAR(s.Createddate) = YEAR(GETDATE()))
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
	ELSE
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 1)
					AND (YEAR(s.Createddate) = YEAR(@Fromdate))
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 2)
					AND (YEAR(s.Createddate) = YEAR(@Fromdate))
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 3)
					AND (YEAR(s.Createddate) = YEAR(@Fromdate))
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 4)
					AND (YEAR(s.Createddate) = YEAR(@Fromdate))
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 5)
					AND (YEAR(s.Createddate) = YEAR(@Fromdate))
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 6)
					AND (YEAR(s.Createddate) = YEAR(@Fromdate))
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 7)
					AND (YEAR(s.Createddate) = YEAR(@Fromdate))
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 8)
					AND (YEAR(s.Createddate) = YEAR(@Fromdate))
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 9)
					AND (YEAR(s.Createddate) = YEAR(@Fromdate))
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 10)
					AND (YEAR(s.Createddate) = YEAR(@Fromdate))
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 11)
					AND (YEAR(s.Createddate) = YEAR(@Fromdate))
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(s.NetSalary) AS CountVal
				FROM salarygen s
				INNER JOIN OfficialDetails o ON o.EmployeeID = s.EmployeeID
				INNER JOIN department d ON d.DepartmentID = o.DepartmentId
				WHERE d.Activeflag = 1
					AND o.Activeflag = 1
					AND o.EmployeeID NOT IN (
						565
						,559
						,625
						,626
						,644
						,677
						,915
						)
					AND d.DepartmentName = @DepartmentName
					AND (MONTH(s.Createddate) = 12)
					AND (YEAR(s.Createddate) = YEAR(@Fromdate))
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
END
	--ALTER PROCEDURE Dept_wise_salary_month --   Dept_wise_salary_month '2016'
	--	(
	--	@Fromdate VARCHAR(max) = ''
	--	--	,@Todate VARCHAR(max)
	--	--	,@year varchar(max)
	--	)
	--AS
	--BEGIN
	--	DECLARE @listOfIDs TABLE (
	--		CountVal BIGINT
	--		,NAME VARCHAR(20)
	--		)
	--	IF (@Fromdate = '')
	--	BEGIN
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 1) AND (YEAR(s.Createddate) = YEAR(GETDATE()))
	--				)
	--			,'Jan'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 2) AND (YEAR(s.Createddate) = YEAR(GETDATE()))
	--				)
	--			,'Feb'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 3) AND (YEAR(s.Createddate) = YEAR(GETDATE()))
	--				)
	--			,'Mar'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 4) AND (YEAR(s.Createddate) = YEAR(GETDATE()))
	--				)
	--			,'Apr'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 5) AND (YEAR(s.Createddate) = YEAR(GETDATE()))
	--				)
	--			,'May'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 6) AND (YEAR(s.Createddate) = YEAR(GETDATE()))
	--				)
	--			,'Jun'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 7) AND (YEAR(s.Createddate) = YEAR(GETDATE()))
	--				)
	--			,'Jul'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 8) AND (YEAR(s.Createddate) = YEAR(GETDATE()))
	--				)
	--			,'Aug'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 9) AND (YEAR(s.Createddate) = YEAR(GETDATE()))
	--				)
	--			,'Sep'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 10) AND (YEAR(s.Createddate) = YEAR(GETDATE()))
	--				)
	--			,'Oct'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 11) AND (YEAR(s.Createddate) = YEAR(GETDATE()))
	--				)
	--			,'Nov'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 12) AND (YEAR(s.Createddate) = YEAR(GETDATE()))
	--				)
	--			,'Dec'
	--			)
	--		SELECT *
	--		FROM @listOfIDs
	--	END
	--	ELSE
	--	BEGIN
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 1) AND (YEAR(s.Createddate) = YEAR(@Fromdate))
	--				)
	--			,'Jan'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 2) AND (YEAR(s.Createddate) = YEAR(@Fromdate))
	--				)
	--			,'Feb'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 3) AND (YEAR(s.Createddate) = YEAR(@Fromdate))
	--				)
	--			,'Mar'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 4) AND (YEAR(s.Createddate) = YEAR(@Fromdate))
	--				)
	--			,'Apr'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 5) AND (YEAR(s.Createddate) = YEAR(@Fromdate))
	--				)
	--			,'May'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 6) AND (YEAR(s.Createddate) = YEAR(@Fromdate))
	--				)
	--			,'Jun'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 7) AND (YEAR(s.Createddate) = YEAR(@Fromdate))
	--				)
	--			,'Jul'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 8) AND (YEAR(s.Createddate) = YEAR(@Fromdate))
	--				)
	--			,'Aug'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 9) AND (YEAR(s.Createddate) = YEAR(@Fromdate))
	--				)
	--			,'Sep'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 10) AND (YEAR(s.Createddate) = YEAR(@Fromdate))
	--				)
	--			,'Oct'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 11) AND (YEAR(s.Createddate) = YEAR(@Fromdate))
	--				)
	--			,'Nov'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountVal
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT  sum(a.NetSalary) AS CountVal FROM salarygen a INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	--INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	--WHERE d.Activeflag = 1 AND (MONTH(s.Createddate) = 12) AND (YEAR(s.Createddate) = YEAR(@Fromdate))
	--				)
	--			,'Dec'
	--			)
	--		SELECT *
	--		FROM @listOfIDs
	--	END
	--END
