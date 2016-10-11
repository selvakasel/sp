

Alter PROCEDURE Sp_Patient_Race_Report_Crystal -- Sp_Patient_Race_Report_Crystal 'Total' ,'2016-01-01', '2016-04-11'
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
		IF (@set = 'Malays')
		BEGIN
			SELECT patientid
				,FirstName
				,sex
				,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
			FROM patient
			WHERE Race = 1
		END
		ELSE
			IF (@set = 'Chinese')
			BEGIN
				SELECT patientid
					,FirstName
					,sex
					,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
				FROM patient
				WHERE Race = 2
			END
			ELSE
				IF (@set = 'Indians')
				BEGIN
					SELECT patientid
						,FirstName
						,sex
						,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
					FROM patient
					WHERE Race = 3
				END
				ELSE
					IF (@set = 'Others')
					BEGIN
						SELECT patientid
							,FirstName
							,sex
							,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
						FROM patient
						WHERE Race = 4
					END
					ELSE IF (@set = 'Total')
					BEGIN
						SELECT patientid
							,FirstName
							,sex
							,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
						FROM patient
						WHERE Race != 0
					END
	END
	ELSE
	BEGIN
		IF (@set = 'Malays')
		BEGIN
			SELECT patientid
				,FirstName
				,sex
				,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
			FROM patient
			WHERE Race = 1
				AND CreatedDate BETWEEN @Fromdate
					AND @Todate
		END
		ELSE
			IF (@set = 'Chinese')
			BEGIN
				SELECT patientid
					,FirstName
					,sex
					,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
				FROM patient
				WHERE Race = 2
					AND CreatedDate BETWEEN @Fromdate
						AND @Todate
			END
			ELSE
				IF (@set = 'Indians')
				BEGIN
					SELECT patientid
						,FirstName
						,sex
						,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
					FROM patient
					WHERE Race = 3
						AND CreatedDate BETWEEN @Fromdate
							AND @Todate
				END
				ELSE
					IF (@set = 'Others')
					BEGIN
						SELECT patientid
							,FirstName
							,sex
							,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
						FROM patient
						WHERE Race = 4
							AND CreatedDate BETWEEN @Fromdate
								AND @Todate
					END
					ELSE IF (@set = 'Total')
					BEGIN
						SELECT patientid
							,FirstName
							,sex
							,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age
						FROM patient
						WHERE Race != 0
							AND CreatedDate BETWEEN @Fromdate
								AND @Todate
					END
	END
END
