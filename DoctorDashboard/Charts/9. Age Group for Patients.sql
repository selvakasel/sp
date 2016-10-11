CREATE PROCEDURE count_Age_diff (
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
				WHERE (year(GETDATE()) - year(DateofBirth)) > 0
					AND (year(GETDATE()) - year(DateofBirth)) <= 10
				)
			,'0-10'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 11
					AND (year(GETDATE()) - year(DateofBirth)) <= 20
				)
			,'11-20'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 21
					AND (year(GETDATE()) - year(DateofBirth)) <= 30
				)
			,'21-30'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 31
					AND (year(GETDATE()) - year(DateofBirth)) <= 40
				)
			,'31-40'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 41
					AND (year(GETDATE()) - year(DateofBirth)) <= 50
				)
			,'41-50'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 51
					AND (year(GETDATE()) - year(DateofBirth)) <= 60
				)
			,'51-60'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 61
					AND (year(GETDATE()) - year(DateofBirth)) <= 70
				)
			,'61-70'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 71
					AND (year(GETDATE()) - year(DateofBirth)) <= 80
				)
			,'71-80'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 81
					AND (year(GETDATE()) - year(DateofBirth)) <= 90
				)
			,'81-90'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 91
					AND (year(GETDATE()) - year(DateofBirth)) <= 100
				)
			,'91-100'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 100
				)
			,'100+'
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
				WHERE (year(GETDATE()) - year(DateofBirth)) > 0
					AND (year(GETDATE()) - year(DateofBirth)) <= 10
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'0-10'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 11
					AND (year(GETDATE()) - year(DateofBirth)) <= 20
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'11-20'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 21
					AND (year(GETDATE()) - year(DateofBirth)) <= 30
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'21-30'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 31
					AND (year(GETDATE()) - year(DateofBirth)) <= 40
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'31-40'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 41
					AND (year(GETDATE()) - year(DateofBirth)) <= 50
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'41-50'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 51
					AND (year(GETDATE()) - year(DateofBirth)) <= 60
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'51-60'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 61
					AND (year(GETDATE()) - year(DateofBirth)) <= 70
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'61-70'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 71
					AND (year(GETDATE()) - year(DateofBirth)) <= 80
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'71-80'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 81
					AND (year(GETDATE()) - year(DateofBirth)) <= 90
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'81-90'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 91
					AND (year(GETDATE()) - year(DateofBirth)) <= 100
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'91-100'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE (year(GETDATE()) - year(DateofBirth)) > 100
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'100+'
			)

		SELECT *
		FROM @listOfIDs
	END
END
