CREATE PROCEDURE COUNT_race (
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
				SELECT count(patientid)
				FROM patient
				WHERE Race = 1
				)
			,'Malay'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race = 2
				)
			,'Chinese '
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race = 3
				)
			,'Indian'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race = 4
				)
			,'Others'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race != 0
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
				SELECT count(patientid)
				FROM patient
				WHERE Race = 1
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'MALAY'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race = 2
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'CHINESE'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race = 3
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'INDIAN'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race = 4
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'OTHERS'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race != 0
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'TOTAL'
			)

		SELECT *
		FROM @listOfIDs
	END
END
