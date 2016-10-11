
CREATE PROCEDURE Surgery_OT_Report --  Surgery_OT_Report 'Feb','2016'

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
			 SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 1) AND (YEAR(a.BillDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Feb')
		BEGIN
			 SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 2) AND (YEAR(a.BillDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Mar')
        BEGIN
			 SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 3) AND (YEAR(a.BillDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Apr')
		BEGIN
			 SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 4) AND (YEAR(a.BillDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'May')
        BEGIN
			 SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 5) AND (YEAR(a.BillDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Jun')
		BEGIN
			 SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 6) AND (YEAR(a.BillDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Jul')
        BEGIN
			 SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 7) AND (YEAR(a.BillDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Aug')
		BEGIN
			 SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 8) AND (YEAR(a.BillDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Sep')
        BEGIN
			 SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 9) AND (YEAR(a.BillDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Oct')
		BEGIN
			 SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 10) AND (YEAR(a.BillDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Nov')
        BEGIN
			 SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 11) AND (YEAR(a.BillDate) = YEAR(GETDATE()))
		END
	ELSE IF (@set = 'Dec')
		BEGIN
			 SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 12) AND (YEAR(a.BillDate) = YEAR(GETDATE()))
		END
	END

ELSE
	BEGIN
		IF (@set = 'Jan')
        BEGIN
			SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 1) AND (YEAR(a.BillDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Feb')
		BEGIN
			SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 2) AND (YEAR(a.BillDate) =  YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Mar')
        BEGIN
			SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 3) AND (YEAR(a.BillDate) =  YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Apr')
		BEGIN
			SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 4) AND (YEAR(a.BillDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'May')
        BEGIN
			SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 5) AND (YEAR(a.BillDate) =  YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Jun')
		BEGIN
			SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 6) AND (YEAR(a.BillDate) =  YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Jul')
        BEGIN
			SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 7) AND (YEAR(a.BillDate) =  YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Aug')
		BEGIN
			SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 8) AND (YEAR(a.BillDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Sep')
        BEGIN
			SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 9) AND (YEAR(a.BillDate) = YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Oct')
		BEGIN
			SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 10) AND (YEAR(a.BillDate) =  YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Nov')
        BEGIN
			SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 11) AND (YEAR(a.BillDate) =  YEAR(@Fromdate))
		END
	ELSE IF (@set = 'Dec')
		BEGIN
			SELECT a.BillDate, a.PatientID,b.firstname ,b.Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age 
     FROM FInalbilldetail a inner join patient b on a.PatientID=b.PatientID WHERE chargeid IN (SELECT ChargeID FROM Charges WHERE DepartmentID = 59)
     AND (MONTH(a.BillDate) = 12) AND (YEAR(a.BillDate) =  YEAR(@Fromdate))
		END
	END
END





--SELECT distinct b.patientid,a.firstname,a.sex,a.Age FROM patient a INNER JOIN registration b on a.PatientID=b.PatientID

--WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID HAVING COUNT(PatientID ) = 1 ) 







 --SELECT distinct b.patientid,a.firstname,a.sex,a.Age FROM patient a INNER JOIN registration b on a.PatientID=b.PatientID

--WHERE b.PatientID IN (SELECT PatientID FROM registration GROUP BY PatientID HAVING COUNT(PatientID ) = 1 )








