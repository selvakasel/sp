
ALTER PROCEDURE New_Patient_Report --  New_Patient_Report 'Jan','2015'

(
	@set VARCHAR(max)
	,@Fromdate VARCHAR(max) = ''
	
	)
AS
BEGIN
	IF (
			@fromdate = ''
			
			)
	BEGIN
		IF (@set = 'Jan')
        BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 1	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Feb')
		BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 2	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Mar')
        BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 3	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Apr')
		BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 4	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'May')
        BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 5	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Jun')
		BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 6	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Jul')
        BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 7	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Aug')
		BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 8	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Sep')
        BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 9	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Oct')
		BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 10	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Nov')
        BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 11	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Dec')
		BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 12	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	END

ELSE
	BEGIN
		IF (@set = 'Jan')
        BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 1	AND YEAR(a.CreatedDate) = YEAR('2015'))
		END
	ELSE IF (@set = 'Feb')
		BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 2	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Mar')
        BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 3	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Apr')
		BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 4	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'May')
        BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 5	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Jun')
		BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 6	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Jul')
        BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 7	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Aug')
		BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 8	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Sep')
        BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 9	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Oct')
		BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 10	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Nov')
        BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 11	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Dec')
		BEGIN
			SELECT  b.patientid,a.firstname,a.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, a.DateofBirth, 103)) AS age
			FROM patient a	INNER JOIN registration b ON a.PatientID = b.PatientID
			WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID	HAVING COUNT(PatientID) = 1)
			AND (MONTH(a.CreatedDate) = 12	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	END
END





--SELECT distinct b.patientid,a.firstname,a.sex,a.Age FROM patient a INNER JOIN registration b on a.PatientID=b.PatientID

--WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID HAVING COUNT(PatientID ) = 1 ) 







 --SELECT distinct b.patientid,a.firstname,a.sex,a.Age FROM patient a INNER JOIN registration b on a.PatientID=b.PatientID

--WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID HAVING COUNT(PatientID ) = 1 )








