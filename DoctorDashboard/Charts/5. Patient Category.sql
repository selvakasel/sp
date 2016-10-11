CREATE PROCEDURE sp_Get_Panel_Cash_count --  sp_Get_Panel_Cash_count  '2016-01-01', '2016-04-11'
	(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	IF (
			@Fromdate = ''
			AND @Todate = ''
			)
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
				)
			,'General'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				)
			,'Panel'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				)
			,'Total'
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
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'General'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Panel'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Total'
			)

		SELECT *
		FROM @listOfIDs
	END
END
