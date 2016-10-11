CREATE PROCEDURE COUNT_Locations (
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
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Sabah'
				)
			,'Sabah'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Perak'
				)
			,'Perak'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Kelantan'
				)
			,'Kelantan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Selangor'
				)
			,'Selangor'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Sarawak'
				)
			,'Sarawak'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Kedah'
				)
			,'Kedah'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Melaka'
				)
			,'Melaka'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Pahang'
				)
			,'Pahang'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Wilayah Persekutuan'
				)
			,'WilayahPersekutuan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Terengganu'
				)
			,'Terengganu'
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
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Sabah'
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Sabah'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Perak'
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Perak '
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Kelantan'
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Kelantan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Selangor'
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Selangor'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Sarawak'
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Sarawak'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Kedah'
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Kedah'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Melaka'
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Melaka'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Pahang'
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Pahang'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Wilayah Persekutuan'
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'WilayahPersekutuan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Terengganu'
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Terengganu'
			)

		SELECT *
		FROM @listOfIDs
	END
END
