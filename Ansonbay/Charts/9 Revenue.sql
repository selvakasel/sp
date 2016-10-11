
Alter PROCEDURE Sp_Revenue --   Sp_Revenue '2015'
	(
	@Fromdate VARCHAR(max) = ''
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
				SELECT sum(Amount)	FROM EcMyReceipt
	WHERE(MONTH(Created) = 1 AND YEAR(Created) = YEAR(GETDATE()))
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
	WHERE(MONTH(Created) = 2 AND YEAR(Created) = YEAR(GETDATE()))
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
	WHERE(MONTH(Created) = 3 AND YEAR(Created) = YEAR(GETDATE()))
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
	WHERE(MONTH(Created) = 4 AND YEAR(Created) = YEAR(GETDATE()))
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
	WHERE(MONTH(Created) = 5 AND YEAR(Created) = YEAR(GETDATE()))
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
	WHERE(MONTH(Created) = 6 AND YEAR(Created) = YEAR(GETDATE()))
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
	WHERE(MONTH(Created) = 7 AND YEAR(Created) = YEAR(GETDATE()))
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
	WHERE(MONTH(Created) = 8 AND YEAR(Created) = YEAR(GETDATE()))
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
	WHERE(MONTH(Created) = 9 AND YEAR(Created) = YEAR(GETDATE()))
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
	WHERE(MONTH(Created) = 10 AND YEAR(Created) = YEAR(GETDATE()))
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
	WHERE(MONTH(Created) = 11 AND YEAR(Created) = YEAR(GETDATE()))
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
	WHERE(MONTH(Created) = 12 AND YEAR(Created) = YEAR(GETDATE()))
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
				SELECT sum(Amount)	FROM EcMyReceipt
					Where (MONTH(Created) = 1)
					AND (YEAR(Created) = YEAR(@Fromdate))
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
					Where (MONTH(Created) = 2)
					AND (YEAR(Created) = YEAR(@Fromdate))
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
					Where (MONTH(Created) = 3)
					AND (YEAR(Created) = YEAR(@Fromdate))
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(SELECT sum(Amount)	FROM EcMyReceipt
					Where (MONTH(Created) = 4)
					AND (YEAR(Created) = YEAR(@Fromdate))
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(SELECT sum(Amount)	FROM EcMyReceipt
					Where (MONTH(Created) = 5)
					AND (YEAR(Created) = YEAR(@Fromdate))
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
					Where (MONTH(Created) = 6)
					AND (YEAR(Created) = YEAR(@Fromdate))
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
					Where (MONTH(Created) = 7)
					AND (YEAR(Created) = YEAR(@Fromdate))
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
					Where (MONTH(Created) = 8)
					AND (YEAR(Created) = YEAR(@Fromdate))
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
					Where (MONTH(Created) = 9)
					AND (YEAR(Created) = YEAR(@Fromdate))
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(SELECT sum(Amount)	FROM EcMyReceipt
					Where (MONTH(Created) = 10)
					AND (YEAR(Created) = YEAR(@Fromdate))
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
					Where (MONTH(Created) = 11)
					AND (YEAR(Created) = YEAR(@Fromdate))
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(Amount)	FROM EcMyReceipt
					Where (MONTH(Created) = 12)
					AND (YEAR(Created) = YEAR(@Fromdate))
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
END

