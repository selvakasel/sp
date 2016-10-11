
ALTER PROCEDURE count_patient_inter ---   count_patient_inter '2016-02-08' 16:01:14.007' 
	(@Fromdate varchar(max) = ''
	
	)
AS
BEGIN
  DECLARE @fromdate1 datetime
  set @fromdate1=CONVERT(DATETIME,CONVERT(VARCHAR(10),@fromdate, 112)) 
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	IF (@Fromdate = '')
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					
                 select COUNT(DISTINCT PatientID)from patient where CAST(CreatedDate as time) >= '11:00:00' 
                  and CAST(CreatedDate as time) < '12:00:00' and convert(date,CreatedDate)= convert(date,@fromdate)
					)
				)
			,'00:00 - 01:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '01:00:00'
						AND CAST(CreatedDate AS TIME) < '02:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'01:00 - 02:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '02:00:00'
						AND CAST(CreatedDate AS TIME) < '03:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'02:00 - 03:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '03:00:00'
						AND CAST(CreatedDate AS TIME) < '04:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'03:00 - 04:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '04:00:00'
						AND CAST(CreatedDate AS TIME) < '05:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'04:00 - 05:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '05:00:00'
						AND CAST(CreatedDate AS TIME) < '06:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'05:00 - 06:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '06:00:00'
						AND CAST(CreatedDate AS TIME) < '07:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'06:00 - 07:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '07:00:00'
						AND CAST(CreatedDate AS TIME) < '08:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'07:00 - 08:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '08:00:00'
						AND CAST(CreatedDate AS TIME) < '09:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'08:00 - 09:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '09:00:00'
						AND CAST(CreatedDate AS TIME) < '10:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'09:00 - 10:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '10:00:00'
						AND CAST(CreatedDate AS TIME) < '11:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'10:00 - 11:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '11:00:00'
						AND CAST(CreatedDate AS TIME) < '12:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, '2016-03-14')
					)
				)
			,'11:00 - 12:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '12:00:00'
						AND CAST(CreatedDate AS TIME) < '13:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'12:00 - 13:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '13:00:00'
						AND CAST(CreatedDate AS TIME) < '14:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'13:00 - 14:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '14:00:00'
						AND CAST(CreatedDate AS TIME) < '15:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'14:00 - 15:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '15:00:00'
						AND CAST(CreatedDate AS TIME) < '16:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'15:00 - 16:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '16:00:00'
						AND CAST(CreatedDate AS TIME) < '17:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'16:00 - 17:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '17:00:00'
						AND CAST(CreatedDate AS TIME) < '18:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'17:00 - 18:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '18:00:00'
						AND CAST(CreatedDate AS TIME) < '19:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'18:00 - 19:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '19:00:00'
						AND CAST(CreatedDate AS TIME) < '20:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'19:00 - 20:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '20:00:00'
						AND CAST(CreatedDate AS TIME) < '21:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'20:00 - 21:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '21:00:00'
						AND CAST(CreatedDate AS TIME) < '22:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'21:00 - 22:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '22:00:00'
						AND CAST(CreatedDate AS TIME) < '23:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'22:00 - 23:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '23:00:00'
						AND CAST(CreatedDate AS TIME) < '00:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
					)
				)
			,'23:00 - 00:00'
			)

		SELECT *
		FROM @listOfIDs
	END
	ELSE
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '00:00:00'
						AND CAST(CreatedDate AS TIME) < '01:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'00:00 - 01:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '01:00:00'
						AND CAST(CreatedDate AS TIME) < '02:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'01:00 - 02:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '02:00:00'
						AND CAST(CreatedDate AS TIME) < '03:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'02:00 - 03:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '03:00:00'
						AND CAST(CreatedDate AS TIME) < '04:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'03:00 - 04:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '04:00:00'
						AND CAST(CreatedDate AS TIME) < '05:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'04:00 - 05:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '05:00:00'
						AND CAST(CreatedDate AS TIME) < '06:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'05:00 - 06:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '06:00:00'
						AND CAST(CreatedDate AS TIME) < '07:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'06:00 - 07:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '07:00:00'
						AND CAST(CreatedDate AS TIME) < '08:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'07:00 - 08:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '08:00:00'
						AND CAST(CreatedDate AS TIME) < '09:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'08:00 - 09:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '09:00:00'
						AND CAST(CreatedDate AS TIME) < '10:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'09:00 - 10:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '10:00:00'
						AND CAST(CreatedDate AS TIME) < '11:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'10:00 - 11:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '11:00:00'
						AND CAST(CreatedDate AS TIME) < '12:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'11:00 - 12:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '12:00:00'
						AND CAST(CreatedDate AS TIME) < '13:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'12:00 - 13:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '13:00:00'
						AND CAST(CreatedDate AS TIME) < '14:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'13:00 - 14:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '14:00:00'
						AND CAST(CreatedDate AS TIME) < '15:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'14:00 - 15:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '15:00:00'
						AND CAST(CreatedDate AS TIME) < '16:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'15:00 - 16:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '16:00:00'
						AND CAST(CreatedDate AS TIME) < '17:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'16:00 - 17:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '17:00:00'
						AND CAST(CreatedDate AS TIME) < '18:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'17:00 - 18:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '18:00:00'
						AND CAST(CreatedDate AS TIME) < '19:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'18:00 - 19:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '19:00:00'
						AND CAST(CreatedDate AS TIME) < '20:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'19:00 - 20:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '20:00:00'
						AND CAST(CreatedDate AS TIME) < '21:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'20:00 - 21:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '21:00:00'
						AND CAST(CreatedDate AS TIME) < '22:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'21:00 - 22:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '22:00:00'
						AND CAST(CreatedDate AS TIME) < '23:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'22:00 - 23:00'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				(
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '23:00:00'
						AND CAST(CreatedDate AS TIME) < '00:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, @Fromdate)
						AND CreatedDate = @Fromdate
					)
				)
			,'23:00 - 00:00'
			)

		SELECT *
		FROM @listOfIDs
	END
END
	
	







	

   SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '11:00:00'
						AND CAST(CreatedDate AS TIME) < '12:00:00'
						
						AND convert(DATE, CreatedDate) = convert(DATE,getdate())			
						
						