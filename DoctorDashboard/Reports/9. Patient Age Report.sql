Alter PROCEDURE countAge_diff_report   --  countAge_diff_report '100+','2015-01-01 11:46:21.740', '2016-04-01 11:46:21.740'

 (
	@set VARCHAR(max)
	,@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN
	IF (
			@Fromdate = ''
			AND @Todate = ''
			)

  BEGIN
	IF (@set = '0-10' )
	BEGIN
	  SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM patient	WHERE (year(GETDATE()) - year(DateofBirth)) > 0	AND 
	  (year(GETDATE()) - year(DateofBirth)) <= 10
	END
	else if(@set ='11-20')
	begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM patient	WHERE (year(GETDATE()) - year(DateofBirth)) > 11
		AND (year(GETDATE()) - year(DateofBirth)) <= 20
	end
    else if(@set ='21-30')
     begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM patient	WHERE (year(GETDATE()) - year(DateofBirth)) > 21
		AND (year(GETDATE()) - year(DateofBirth)) <= 30
	end
	else if(@set ='31-40')
	begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age	FROM patient WHERE (year(GETDATE()) - year(DateofBirth)) > 31
		AND (year(GETDATE()) - year(DateofBirth)) <= 40
	END
	ELSE if(@set ='41-50')
	begin
	   SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM patient	WHERE (year(GETDATE()) - year(DateofBirth)) > 41
	   AND (year(GETDATE()) - year(DateofBirth)) <= 50
	end
	else if(@set ='51-60')
	begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM patient	WHERE (year(GETDATE()) - year(DateofBirth)) > 51
		AND (year(GETDATE()) - year(DateofBirth)) <= 60
    END
    ELSE if(@set ='61-70')
    begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM patient	WHERE (year(GETDATE()) - year(DateofBirth)) > 61
		AND (year(GETDATE()) - year(DateofBirth)) <= 70
	end
	else if(@set ='71-80')
	begin
	    SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age	FROM patient WHERE (year(GETDATE()) - year(DateofBirth)) > 71
		AND (year(GETDATE()) - year(DateofBirth)) <= 80
	end
	else if(@set ='81-90')
	begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age	FROM patient WHERE (year(GETDATE()) - year(DateofBirth)) > 81
		AND (year(GETDATE()) - year(DateofBirth)) <= 90
	end 
	else if(@set ='91-100')
	begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age	FROM patient WHERE (year(GETDATE()) - year(DateofBirth)) > 91
		AND (year(GETDATE()) - year(DateofBirth)) <= 100
	end
	else if(@set ='100+')	
	begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age	FROM patient WHERE (year(GETDATE()) - year(DateofBirth)) > 100
	end

end
 ELSE
 BEGIN
	IF (@set = '0-10' )
	BEGIN
	  SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM patient	WHERE (year(GETDATE()) - year(DateofBirth)) > 0	AND 
	  (year(GETDATE()) - year(DateofBirth)) <= 10 AND CreatedDate BETWEEN @Fromdate AND @Todate
	END
	else if(@set ='11-20')
	begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM patient	WHERE (year(GETDATE()) - year(DateofBirth)) > 11
		AND (year(GETDATE()) - year(DateofBirth)) <= 20 AND CreatedDate BETWEEN @Fromdate AND @Todate
	end
    else if(@set ='21-30')
     begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM patient	WHERE (year(GETDATE()) - year(DateofBirth)) > 21
		AND (year(GETDATE()) - year(DateofBirth)) <= 30 AND CreatedDate BETWEEN @Fromdate AND @Todate
	end
	else if(@set ='31-40')
	begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age	FROM patient WHERE (year(GETDATE()) - year(DateofBirth)) > 31
		AND (year(GETDATE()) - year(DateofBirth)) <= 40 AND CreatedDate BETWEEN @Fromdate AND @Todate
	END
	ELSE if(@set ='41-50')
	begin
	   SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM patient	WHERE (year(GETDATE()) - year(DateofBirth)) > 41
	   AND (year(GETDATE()) - year(DateofBirth)) <= 50 AND CreatedDate BETWEEN @Fromdate AND @Todate
	end
	else if(@set ='51-60')
	begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM patient	WHERE (year(GETDATE()) - year(DateofBirth)) > 51
		AND (year(GETDATE()) - year(DateofBirth)) <= 60 AND CreatedDate BETWEEN @Fromdate AND @Todate
    END
    ELSE if(@set ='61-70')
    begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM patient	WHERE (year(GETDATE()) - year(DateofBirth)) > 61
		AND (year(GETDATE()) - year(DateofBirth)) <= 70 AND CreatedDate BETWEEN @Fromdate AND @Todate
	end
	else if(@set ='71-80')
	begin
	    SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age	FROM patient WHERE (year(GETDATE()) - year(DateofBirth)) > 71
		AND (year(GETDATE()) - year(DateofBirth)) <= 80 AND CreatedDate BETWEEN @Fromdate AND @Todate
	end
	else if(@set ='81-90')
	begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age	FROM patient WHERE (year(GETDATE()) - year(DateofBirth)) > 81
		AND (year(GETDATE()) - year(DateofBirth)) <= 90 AND CreatedDate BETWEEN @Fromdate AND @Todate
	end 
	else if(@set ='91-100')
	begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age	FROM patient WHERE (year(GETDATE()) - year(DateofBirth)) > 91
		AND (year(GETDATE()) - year(DateofBirth)) <= 100 AND CreatedDate BETWEEN @Fromdate AND @Todate
	end
	else if(@set ='100+')		
	begin
		SELECT PatientID,FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age	FROM patient WHERE (year(GETDATE()) - year(DateofBirth)) > 100
		AND CreatedDate BETWEEN @Fromdate AND @Todate
	end

end
END