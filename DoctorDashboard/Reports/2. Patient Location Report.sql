
Alter PROCEDURE patient_Location_report --  patient_Location_report 'Kelantan','2016-01-01', '2016-04-01'
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
	IF (@set = 'Sabah')
		BEGIN
			SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set
				
		END
	ELSE IF (@set = 'Perak')
		BEGIN
			SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set
		END
	ELSE IF (@set = 'Kelantan')
		BEGIN
				SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set
		END
	ELSE IF (@set = 'Selangor')
		BEGIN
			SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set
				
		END
	ELSE
	IF (@set = 'Sarawak')
		BEGIN
			SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set
		END
	ELSE 
	IF (@set = 'Kedah')
		BEGIN
				SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set
		END
	ELSE IF (@set = 'Melaka')
		BEGIN
				SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set
		END
	ELSE IF (@set = 'Pahang')
		BEGIN
			SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set
				
		END
	ELSE
	IF (@set = 'Wilayah Persekutuan')
		BEGIN
			SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set
		END
	ELSE 
	IF (@set = 'Terengganu')
		BEGIN
				SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set
		END








	END
	
ELSE
BEGIN
	IF (@set = 'Sabah')
		BEGIN
			SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set AND CreatedDate BETWEEN @Fromdate AND @Todate				
				
		END
	ELSE IF (@set = 'Perak')
		BEGIN
			SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set AND CreatedDate BETWEEN @Fromdate AND @Todate
		END
	ELSE IF (@set = 'Kelantan')
		BEGIN
				SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set AND CreatedDate BETWEEN @Fromdate AND @Todate
		END
	ELSE IF (@set = 'Selangor')
		BEGIN
			SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set AND CreatedDate BETWEEN @Fromdate AND @Todate
				
		END
	ELSE
	IF (@set = 'Sarawak')
		BEGIN
			SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set AND CreatedDate BETWEEN @Fromdate AND @Todate
		END
	ELSE 
	IF (@set = 'Kedah')
		BEGIN
				SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set AND CreatedDate BETWEEN @Fromdate AND @Todate
		END
	ELSE IF (@set = 'Melaka')
		BEGIN
				SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set AND CreatedDate BETWEEN @Fromdate AND @Todate
		END
	ELSE IF (@set = 'Pahang')
		BEGIN
			SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set AND CreatedDate BETWEEN @Fromdate AND @Todate
				
		END
	ELSE
	IF (@set = 'Wilayah Persekutuan')
		BEGIN
			SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set AND CreatedDate BETWEEN @Fromdate AND @Todate
		END
	ELSE 
	IF (@set = 'Terengganu')
		BEGIN
				SELECT FirstName,Sex,Country,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age FROM Patient
			WHERE activeflag = 1 and State=@set AND CreatedDate BETWEEN @Fromdate AND @Todate
		END








	END




END
