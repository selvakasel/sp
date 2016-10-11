

CREATE PROCEDURE Gender_patient 
AS
BEGIN
	DECLARE @listOfID TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex)
				FROM Patient
				WHERE Sex = 'M'
				)
			,'Male'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex)
				FROM Patient
				WHERE Sex = 'F'
				)
			,'Female'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex)
				FROM Patient
				)
			,'Total'
			)

		SELECT *
		FROM @listOfID
	END
	
	


