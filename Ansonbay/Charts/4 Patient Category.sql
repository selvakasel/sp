


CREATE PROCEDURE Patient_category 
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
				SELECT  count(PatientValidationResponseStatus)	FROM Patient WHERE PatientValidationResponseStatus = 1  
				)
			,'General'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(PatientValidationResponseStatus)FROM Patient WHERE PatientValidationResponseStatus = 0
				)
			,'Panel'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(PatientValidationResponseStatus) FROM Patient
				)
			,'Total'
			)

		SELECT *
		FROM @listOfIDs
	END
	
END

