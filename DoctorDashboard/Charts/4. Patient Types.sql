CREATE PROCEDURE check_count_ss (
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
				SELECT count(PatientID)
				FROM Registration
				WHERE PatientID IN (
						SELECT PatientID
						FROM registration
						GROUP BY PatientID
						HAVING COUNT(PatientID) > 1
						)
				)
			,'Existing'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(PatientID)
				FROM registration
				WHERE PatientID IN (
						SELECT PatientID
						FROM registration
						GROUP BY PatientID
						HAVING COUNT(PatientID) = 1
						)
				)
			,'New'
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
				SELECT count(PatientID)
				FROM registration
				WHERE PatientID IN (
						SELECT PatientID
						FROM registration
						GROUP BY PatientID
						HAVING COUNT(PatientID) > 1
						)
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Existing'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(PatientID)
				FROM registration
				WHERE PatientID IN (
						SELECT PatientID
						FROM registration
						GROUP BY PatientID
						HAVING COUNT(PatientID) = 1
						)
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'New'
			)

		SELECT *
		FROM @listOfIDs
	END
END
