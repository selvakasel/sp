

Alter PROCEDURE Sp_Patient_Type_Report --  Sp_Patient_Type_Report 'New','2016-01-01', '2016-04-11'

(
	@set VARCHAR(max)
	,@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN
	IF (
			@fromdate = ''
			AND @Todate = ''
			)
	BEGIN
		IF (@set = 'Existing')
        BEGIN
			SELECT DISTINCT b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) > 1)
		END
	ELSE IF (@set = 'New')
		BEGIN
			SELECT DISTINCT b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
		END
	END
	ELSE
	BEGIN
		IF (@set = 'Existing')
		BEGIN
			SELECT DISTINCT b.patientid
				,a.firstname
				,a.sex
				,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a
			INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID	FROM registration GROUP BY PatientID HAVING COUNT(PatientID) > 1)
			AND a.CreatedDate BETWEEN @Fromdate	AND @Todate
		END
		ELSE IF (@set = 'New')
		BEGIN
			SELECT DISTINCT b.patientid
				,a.firstname
				,a.sex
				,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a
			INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (
					SELECT PatientID
					FROM registration
					GROUP BY PatientID
					HAVING COUNT(PatientID) = 1
					)
				AND a.CreatedDate BETWEEN @Fromdate
					AND @Todate
		END
	END
END





--SELECT distinct b.patientid,a.firstname,a.sex,a.Age FROM patient a INNER JOIN registration b on a.PatientID=b.PatientID

--WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID HAVING COUNT(PatientID ) > 1 ) 







 --SELECT distinct b.patientid,a.firstname,a.sex,a.Age FROM patient a INNER JOIN registration b on a.PatientID=b.PatientID

--WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID HAVING COUNT(PatientID ) = 1 )








