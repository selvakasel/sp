CREATE PROCEDURE sp_list_Surgerycount_by_month --   sp_list_Surgerycount_by_month '2016-12-10 00:00:00.000'
	(
	@Fromdate VARCHAR(max) = ''
	--	,@Todate VARCHAR(max)
	--	,@year varchar(max)
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
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 1)
					AND (YEAR(BillDate) = YEAR(GETDATE()))
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 2)
					AND (YEAR(BillDate) = YEAR(GETDATE()))
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 3)
					AND (YEAR(BillDate) = YEAR(GETDATE()))
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 4)
					AND (YEAR(BillDate) = YEAR(GETDATE()))
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 5)
					AND (YEAR(BillDate) = YEAR(GETDATE()))
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 6)
					AND (YEAR(BillDate) = YEAR(GETDATE()))
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 7)
					AND (YEAR(BillDate) = YEAR(GETDATE()))
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 8)
					AND (YEAR(BillDate) = YEAR(GETDATE()))
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 9)
					AND (YEAR(BillDate) = YEAR(GETDATE()))
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 10)
					AND (YEAR(BillDate) = YEAR(GETDATE()))
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 11)
					AND (YEAR(BillDate) = YEAR(GETDATE()))
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 12)
					AND (YEAR(BillDate) = YEAR(GETDATE()))
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
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 1)
					AND (YEAR(BillDate) = YEAR(@Fromdate))
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 2)
					AND (YEAR(BillDate) = YEAR(@Fromdate))
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 3)
					AND (YEAR(BillDate) = YEAR(@Fromdate))
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 4)
					AND (YEAR(BillDate) = YEAR(@Fromdate))
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 5)
					AND (YEAR(BillDate) = YEAR(@Fromdate))
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 6)
					AND (YEAR(BillDate) = YEAR(@Fromdate))
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 7)
					AND (YEAR(BillDate) = YEAR(@Fromdate))
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 8)
					AND (YEAR(BillDate) = YEAR(@Fromdate))
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 9)
					AND (YEAR(BillDate) = YEAR(@Fromdate))
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 10)
					AND (YEAR(BillDate) = YEAR(@Fromdate))
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 11)
					AND (YEAR(BillDate) = YEAR(@Fromdate))
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM FInalbilldetail
				WHERE chargeid IN (
						SELECT ChargeID
						FROM Charges
						WHERE DepartmentID = 59
						)
					AND (MONTH(BillDate) = 12)
					AND (YEAR(BillDate) = YEAR(@Fromdate))
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
END
