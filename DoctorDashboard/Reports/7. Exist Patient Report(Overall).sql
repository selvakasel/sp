CREATE PROCEDURE Exist_Patient_Report --  Exist_Patient_Report 'Sep','2015'

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
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 1	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Feb')
		BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 2	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Mar')
        BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 3	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Apr')
		BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 4	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'May')
        BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 5	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Jun')
		BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 6	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Jul')
        BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 7	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Aug')
		BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 8	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Sep')
        BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 9	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Oct')
		BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 10	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Nov')
        BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 11	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Dec')
		BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 12	AND YEAR(a.CreatedDate) = YEAR(GETDATE()))
		END
	END

ELSE
	BEGIN
		IF (@set = 'Jan')
        BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 1	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Feb')
		BEGIN
SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 2	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Mar')
        BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 3	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Apr')
		BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 4	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'May')
        BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 5	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Jun')
		BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 6	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Jul')
        BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 7	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Aug')
		BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 8	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Sep')
        BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 9	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Oct')
		BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 10	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Nov')
        BEGIN
		SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 11	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Dec')
		BEGIN
			SELECT a.patientid , b.firstname,b.sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
FROM registration a  INNER JOIN patient b ON a.PatientID = b.PatientID WHERE a.PatientID IN (SELECT a.PatientID	FROM registration a 
GROUP BY a.PatientID HAVING COUNT(a.PatientID) > 1)
			AND (MONTH(a.CreatedDate) = 12	AND YEAR(a.CreatedDate) = YEAR(@Fromdate))
		END
	END
END



