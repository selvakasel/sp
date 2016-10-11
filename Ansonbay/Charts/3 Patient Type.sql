

CREATE PROCEDURE Patient_type 
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(PatientID)FROM Patient WHERE PatientID IN (
	SELECT PatientID FROM Patient GROUP BY PatientID HAVING COUNT(PatientID) > 1)
						)
				
			,'Existing'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				
               SELECT count(PatientID)FROM Patient WHERE PatientID IN (	SELECT PatientID FROM Patient GROUP BY PatientID HAVING COUNT(PatientID) = 1)
						)
				
			,'New'
			)

		SELECT *
		FROM @listOfIDs
END
	

