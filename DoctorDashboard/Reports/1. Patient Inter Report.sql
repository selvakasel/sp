


ALTER PROCEDURE count_patient_inter_report ---   count_patient_inter_report  '10:00 - 11:00','2016-04-06' 

	(
	@set varchar(max)
	,@fromdate VARCHAR(max) = ''
	)
AS
BEGIN
IF (@Fromdate = '')

BEGIN

	   
	    IF (@set = '00:00 - 01:00')
	BEGIN
	      select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	      WHERE CAST(CreatedDate AS TIME) >= '00:00:00'	AND CAST(CreatedDate AS TIME) < '01:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1

    END
	    ELSE IF (@set = '01:00 - 02:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime  from patient
	     WHERE CAST(CreatedDate AS TIME) >= '01:00:00'	AND CAST(CreatedDate AS TIME) < '02:00:00' AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
   
    END
	   ELSE IF (@set = '02:00 - 03:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '02:00:00'	AND CAST(CreatedDate AS TIME) < '03:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
    END

	   ELSE IF (@set = '03:00 - 04:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '03:00:00'	AND CAST(CreatedDate AS TIME) < '04:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1

    END
	   ELSE IF (@set = '04:00 - 05:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime  from patient
	     WHERE CAST(CreatedDate AS TIME) >= '04:00:00'	AND CAST(CreatedDate AS TIME) < '05:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
   
    END
	   ELSE IF (@set = '05:00 - 06:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime  from patient
	     WHERE CAST(CreatedDate AS TIME) >= '05:00:00'	AND CAST(CreatedDate AS TIME) < '06:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
    END

	   ELSE IF (@set = '06:00 - 07:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '06:00:00'	AND CAST(CreatedDate AS TIME) < '07:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1

    END
	    ELSE IF (@set = '07:00 - 08:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '07:00:00'	AND CAST(CreatedDate AS TIME) < '08:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
   
    END
	    ELSE IF (@set = '08:00 - 09:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '08:00:00'	AND CAST(CreatedDate AS TIME) < '09:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
    END

	    ELSE IF (@set = '09:00 - 10:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '09:00:00'	AND CAST(CreatedDate AS TIME) < '10:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1

    END
	    ELSE IF (@set = '10:00 - 11:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '10:00:00'	AND CAST(CreatedDate AS TIME) < '11:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
   
    END
	    ELSE IF (@set = '11:00 - 12:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '11:00:00'	AND CAST(CreatedDate AS TIME) < '12:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
    END

	    ELSE IF (@set = '12:00 - 13:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '12:00:00'	AND CAST(CreatedDate AS TIME) < '13:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1

    END
	    ELSE IF (@set = '13:00 - 14:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '13:00:00'	AND CAST(CreatedDate AS TIME) < '14:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
   
    END
	    ELSE IF (@set = '14:00 - 15:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '14:00:00'	AND CAST(CreatedDate AS TIME) < '15:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
    END

	    ELSE IF (@set = '15:00 - 16:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime  from patient
	     WHERE CAST(CreatedDate AS TIME) >= '15:00:00'	AND CAST(CreatedDate AS TIME) < '16:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1

    END
	ELSE IF (@set = '16:00 - 17:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '16:00:00'	AND CAST(CreatedDate AS TIME) < '17:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
   
    END
       ELSE IF (@set = '17:00 - 18:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '17:00:00'	AND CAST(CreatedDate AS TIME) < '18:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
    END

	   ELSE IF (@set = '18:00 - 19:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '18:00:00'	AND CAST(CreatedDate AS TIME) < '19:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
    END

	   ELSE IF (@set = '19:00 - 20:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '19:00:00'	AND CAST(CreatedDate AS TIME) < '20:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1

    END
	   ELSE IF (@set = '20:00 - 21:00')
	BEGIN
	      select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	      WHERE CAST(CreatedDate AS TIME) >= '20:00:00'	AND CAST(CreatedDate AS TIME) < '21:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
   
    END
	   ELSE IF (@set = '21:00 - 22:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	    WHERE CAST(CreatedDate AS TIME) >= '21:00:00'	AND CAST(CreatedDate AS TIME) < '22:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
    END

	   ELSE IF (@set = '22:00 - 23:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '22:00:00'	AND CAST(CreatedDate AS TIME) < '23:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1

    END
	   ELSE IF (@set = '23:00 - 00:00')
	BEGIN
	      select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	      WHERE CAST(CreatedDate AS TIME) >='23:00:00' AND CAST(CreatedDate AS TIME) < '00:00:00'AND convert(DATE, CreatedDate) = convert(DATE, getdate()) and activeflag = 1
   
    END

END


ELSE

BEGIN

	   
	    IF (@set = '00:00 - 01:00')
	BEGIN
	      select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	      WHERE CAST(CreatedDate AS TIME) >= '00:00:00'	AND CAST(CreatedDate AS TIME) < '01:00:00'
		  AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1

    END
	    ELSE IF (@set = '01:00 - 02:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '01:00:00'	AND CAST(CreatedDate AS TIME) < '02:00:00' AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
   
    END
	   ELSE IF (@set = '02:00 - 03:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '02:00:00'	AND CAST(CreatedDate AS TIME) < '03:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
    END

	   ELSE IF (@set = '03:00 - 04:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age from patient
	     WHERE CAST(CreatedDate AS TIME) >= '03:00:00'	AND CAST(CreatedDate AS TIME) < '04:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1

    END
	   ELSE IF (@set = '04:00 - 05:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime  from patient
	     WHERE CAST(CreatedDate AS TIME) >= '04:00:00'	AND CAST(CreatedDate AS TIME) < '05:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
   
    END
	   ELSE IF (@set = '05:00 - 06:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '05:00:00'	AND CAST(CreatedDate AS TIME) < '06:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
    END

	   ELSE IF (@set = '06:00 - 07:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '06:00:00'	AND CAST(CreatedDate AS TIME) < '07:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1

    END
	    ELSE IF (@set = '07:00 - 08:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '07:00:00'	AND CAST(CreatedDate AS TIME) < '08:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
   
    END
	    ELSE IF (@set = '08:00 - 09:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '08:00:00'	AND CAST(CreatedDate AS TIME) < '09:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
    END

	    ELSE IF (@set = '09:00 - 10:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '09:00:00'	AND CAST(CreatedDate AS TIME) < '10:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1

    END
	    ELSE IF (@set = '10:00 - 11:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '10:00:00'	AND CAST(CreatedDate AS TIME) < '11:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
   
    END
	    ELSE IF (@set = '11:00 - 12:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '11:00:00'	AND CAST(CreatedDate AS TIME) < '12:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
    END

	    ELSE IF (@set = '12:00 - 13:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime  from patient
	     WHERE CAST(CreatedDate AS TIME) >= '12:00:00'	AND CAST(CreatedDate AS TIME) < '13:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1

    END
	    ELSE IF (@set = '13:00 - 14:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '13:00:00'	AND CAST(CreatedDate AS TIME) < '14:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
   
    END
	    ELSE IF (@set = '14:00 - 15:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '14:00:00'	AND CAST(CreatedDate AS TIME) < '15:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
    END

	    ELSE IF (@set = '15:00 - 16:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '15:00:00'	AND CAST(CreatedDate AS TIME) < '16:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1

    END
	ELSE IF (@set = '16:00 - 17:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age from patient
	     WHERE CAST(CreatedDate AS TIME) >= '16:00:00'	AND CAST(CreatedDate AS TIME) < '17:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
   
    END
       ELSE IF (@set = '17:00 - 18:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '17:00:00'	AND CAST(CreatedDate AS TIME) < '18:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
    END

	   ELSE IF (@set = '18:00 - 19:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '18:00:00'	AND CAST(CreatedDate AS TIME) < '19:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
    END

	   ELSE IF (@set = '19:00 - 20:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '19:00:00'	AND CAST(CreatedDate AS TIME) < '20:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1

    END
	   ELSE IF (@set = '20:00 - 21:00')
	BEGIN
	      select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	      WHERE CAST(CreatedDate AS TIME) >= '20:00:00'	AND CAST(CreatedDate AS TIME) < '21:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
   
    END
	   ELSE IF (@set = '21:00 - 22:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	    WHERE CAST(CreatedDate AS TIME) >= '21:00:00'	AND CAST(CreatedDate AS TIME) < '22:00:00'AND convert(DATE, CreatedDate) = convert(DATE,@fromdate) and activeflag = 1
    END

	   ELSE IF (@set = '22:00 - 23:00')
	BEGIN
	     select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	     WHERE CAST(CreatedDate AS TIME) >= '22:00:00'	AND CAST(CreatedDate AS TIME) < '23:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1

    END
	   ELSE IF (@set = '23:00 - 00:00')
	BEGIN
	      select PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age ,
		  LTRIM(RIGHT(CONVERT(VARCHAR(20), CreatedDate, 100), 7)) AS VisitingTime from patient
	      WHERE CAST(CreatedDate AS TIME) >='23:00:00' AND CAST(CreatedDate AS TIME) < '00:00:00'AND convert(DATE, CreatedDate) = convert(DATE, @fromdate) and activeflag = 1
   
    END

END
end