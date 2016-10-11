
Alter PROCEDURE patient_gender_report --  patient_gender_report 'male','2015-01-01 ', '2016-04-11' ----------  patient_gender_report 'male' ,'',''
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
		IF (@set = 'Male')
		BEGIN
			SELECT PatientID
				,Firstname 
				,Sex
				,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
			FROM Patient
			WHERE activeflag = 1
				AND sex = 'male'
		END
		ELSE
			IF (@set = 'Female')
			BEGIN
				SELECT PatientID
					,Firstname 
					,Sex
					,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
				FROM Patient
				WHERE activeflag = 1
					AND sex = 'female'
			END
	ELSE IF (@set = 'Total')
			BEGIN
				SELECT PatientID
					,Firstname
					,Sex
					,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
				FROM Patient
				WHERE activeflag = 1
			END
	END
	ELSE
	BEGIN
		IF (@set = 'Male')
		BEGIN
			SELECT PatientID
				,Firstname
				,Sex
				,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
			FROM Patient
			WHERE activeflag = 1
				AND sex = 'male'
				AND CreatedDate BETWEEN @Fromdate
					AND @Todate
		END
		ELSE
			IF (@set = 'Female')
			BEGIN
				SELECT PatientID
					,Firstname 
					,Sex
					,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
				FROM Patient
				WHERE activeflag = 1
					AND sex = 'female'
					AND CreatedDate BETWEEN @Fromdate
						AND @Todate
			END
			ELSE IF (@set = 'Total')
			BEGIN
				SELECT PatientID
					,Firstname
					,Sex
					,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
				FROM Patient
				WHERE activeflag = 1
					AND CreatedDate BETWEEN @Fromdate
						AND @Todate
			END
	END
END

-- SELECT * FROM Patient