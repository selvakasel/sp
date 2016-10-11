


CREATE PROCEDURE Race_Patient 
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
				   select count(patientid) from dbo.v_PatientRecord where Country = 'MALAYSIA'
				)
			,'Malay'
			)

		

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				    select count(patientid) as Others from dbo.v_PatientRecord where Country != 'MALAYSIA'  
				)
			,'Others'
			)

		

		SELECT *
		FROM @listOfIDs
	END
	
END

