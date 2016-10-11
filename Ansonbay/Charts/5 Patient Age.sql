


CREATE PROCEDURE Patient_Age 
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
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
				WHERE (year(GETDATE()) - year(BirthDate)) > 0
					AND (year(GETDATE()) - year(BirthDate)) <= 10
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
				WHERE (year(GETDATE()) - year(BirthDate)) > 11
					AND (year(GETDATE()) - year(BirthDate)) <= 20
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
				WHERE (year(GETDATE()) - year(BirthDate)) > 21
					AND (year(GETDATE()) - year(BirthDate)) <= 30
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
				WHERE (year(GETDATE()) - year(BirthDate)) > 31
					AND (year(GETDATE()) - year(BirthDate)) <= 40
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
				WHERE (year(GETDATE()) - year(BirthDate)) > 41
					AND (year(GETDATE()) - year(BirthDate)) <= 50
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
				WHERE (year(GETDATE()) - year(BirthDate)) > 51
					AND (year(GETDATE()) - year(BirthDate)) <= 60
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
				WHERE (year(GETDATE()) - year(BirthDate)) > 61
					AND (year(GETDATE()) - year(BirthDate)) <= 70
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
				WHERE (year(GETDATE()) - year(BirthDate)) > 71
					AND (year(GETDATE()) - year(BirthDate)) <= 80
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
				WHERE (year(GETDATE()) - year(BirthDate)) > 81
					AND (year(GETDATE()) - year(BirthDate)) <= 90
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
				WHERE (year(GETDATE()) - year(BirthDate)) > 91
					AND (year(GETDATE()) - year(BirthDate)) <= 100
				)
			,'91-100'
			)

		--INSERT INTO @listOfIDs (
		--	CountVal
		--	,NAME
		--	)
		--VALUES (
		--	(
		--		SELECT count(patientid)
		--		FROM patient
		--		WHERE (year(GETDATE()) - year(BirthDate)) > 100
		--		)
		--	,'100+'
		--	)

		SELECT *
		FROM @listOfIDs
	END
	
END
