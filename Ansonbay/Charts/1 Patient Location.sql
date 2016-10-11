


Create PROCEDURE Location_patient 
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
				SELECT count(STATE)
				FROM dbo.v_PatientRecord
				WHERE STATE = 'W.P Kuala Lumpur'
				)
			,'Kuala Lumpur'
			)

    INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM dbo.v_PatientRecord
				WHERE STATE = 'Johor'
				)
			,'Johor'
			)

    INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM dbo.v_PatientRecord
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
				SELECT count(State)
				FROM dbo.v_PatientRecord
				WHERE STATE = 'Pulau Pinang'
				)
			,'Pulau Pinang'
			)

    INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM dbo.v_PatientRecord
				WHERE STATE = 'Negeri Sembilan'
				)
			,'Negeri Sembilan'
			)

 	INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM dbo.v_PatientRecord
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
				FROM dbo.v_PatientRecord
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
				FROM dbo.v_PatientRecord
				WHERE STATE = 'Terengganu'
				)
			,'Terengganu'
			)
	
	INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM dbo.v_PatientRecord
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
				FROM dbo.v_PatientRecord
				WHERE STATE = 'Perlis'
				)
			,'Perlis'
			)

	

		

		SELECT *
		FROM @listOfIDs
	END
	
END

















--------------------------------   Location_patient ( Old ) Sp -------------------------------------------------------------------


--Alter PROCEDURE Location_patient 
--AS
--BEGIN
	
--  SELECT distinct top 10 count(Patientid)as CountVal,State as NAME FROM dbo.v_PatientRecord 
--   where  state != 'NULL' and state != 'Perak'  group by State

--END


