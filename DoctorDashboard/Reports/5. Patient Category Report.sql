

Alter PROCEDURE patient_category_report --  patient_category_report 'Total', '2016-01-01', '2016-04-11'
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
		IF (@set = 'General')
		BEGIN
			SELECT  a.PatientID
				,b.Firstname 
				,b.Sex
				,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
				
			FROM registration a
			INNER JOIN Patient b ON a.PatientID = b.PatientID
			WHERE A.IsPanel = 0
		END
		ELSE
			IF (@set = 'Panel')
			BEGIN
				SELECT  a.PatientID
					,b.Firstname
					,b.Sex
					,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
					
				FROM registration a
				INNER JOIN Patient b ON a.PatientID = b.PatientID
				WHERE A.IsPanel != 0
			END
			ELSE IF (@set = 'Total')
			BEGIN
				SELECT  a.PatientID
					,b.Firstname
					,b.Sex
					,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
					
				FROM registration a
				INNER JOIN Patient b ON a.PatientID = b.PatientID
			END
	END
	ELSE
	BEGIN
		IF (@set = 'General')
		BEGIN
			SELECT  a.PatientID
				,b.Firstname 
				,b.Sex
				,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
				
			FROM registration a
			INNER JOIN Patient b ON a.PatientID = b.PatientID
			WHERE A.IsPanel = 0 and a.CreatedDate between @Fromdate and @Todate
		END
		ELSE
			IF (@set = 'Panel')
			BEGIN
				SELECT  a.PatientID
					,b.Firstname
					,b.Sex
					,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
					
				FROM registration a
				INNER JOIN Patient b ON a.PatientID = b.PatientID
				WHERE A.IsPanel != 0 and a.CreatedDate between @Fromdate and @Todate
			END
			ELSE IF (@set = 'Total')
			BEGIN
				SELECT  a.PatientID
					,b.Firstname
					,b.Sex
					,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, b.DateofBirth, 103)) AS age
					
				FROM registration a
				INNER JOIN Patient b ON a.PatientID = b.PatientID and a.CreatedDate between @Fromdate and @Todate
			END
	END
END

--SELECT count(ispanel) FROM registration WHERE IsPanel = 0     -- General
--SELECT count(ispanel) FROM registration WHERE IsPanel != 0     --  Panel
-- select * from registration
