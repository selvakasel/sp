CREATE PROCEDURE sp_Salutationchart (
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN
	DECLARE @listOfID TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	IF (
			@Fromdate = ''
			AND @Todate = ''
			)
	BEGIN
		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT (
						Count(Sex) * 101 / (
							SELECT Count(*)
							FROM Patient
							)
						)
				FROM patient
				WHERE Sex = 'Male'
				)
			,'Male'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT (
						Count(Sex) * 101 / (
							SELECT Count(*)
							FROM Patient
							)
						)
				FROM patient
				WHERE Sex = 'Female'
				)
			,'Female'
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
				SELECT (
						Count(Sex) * 101 / (
							SELECT Count(*)
							FROM Patient
							)
						)
				FROM patient
				WHERE (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
					AND Sex = 'Male'
				)
			,'Male'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT (
						Count(Sex) * 101 / (
							SELECT Count(*)
							FROM Patient
							)
						)
				FROM patient
				WHERE (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
					AND Sex = 'Female'
				)
			,'Female'
			)

		SELECT *
		FROM @listOfID
	END
END
