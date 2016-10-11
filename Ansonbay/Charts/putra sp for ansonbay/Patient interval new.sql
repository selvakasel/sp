


CREATE PROCEDURE count_patient_inter ---   count_patient_inter '2016-03-14' 

	(@Fromdate VARCHAR(max) = '')
AS
BEGIN
	DECLARE @fromdate1 DATETIME

	
	SET @fromdate1 = CONVERT(DATETIME, CONVERT(VARCHAR(10), @fromdate, 112))

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
					SELECT COUNT(DISTINCT PatientID)
					FROM patient
					WHERE CAST(CreatedDate AS TIME) >= '00:00:00'
						AND CAST(CreatedDate AS TIME) < '01:00:00'
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, getdate())
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
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
						AND convert(DATE, CreatedDate) = convert(DATE, @fromdate)
					)
				)
			,'23:00 - 00:00'
			)

		SELECT *
		FROM @listOfIDs
	END
END
