
--scan share type id = 2

Alter PROCEDURE sp_scan_share --   sp_scan_share

(
	@Fromdate VARCHAR(max) = ''
	
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		countHospital BIGINT
		,countDoctorshare BIGINT
		,NAME VARCHAR(20)
		)

	IF (@Fromdate = '')
		
	BEGIN
		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2

					AND (
						MONTH(CreatedDate) = 1
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 1
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 2
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 2
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 3
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 3
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 4
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 4
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 5
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 5
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 6
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 6
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 7
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 7
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 8
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 8
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 9
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 9
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 10
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 10
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 11
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 11
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 12
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 12
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
	ELSE
	BEGIN
		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 1
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 1
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 2
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 2
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 3
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 3
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 4
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 4
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 5
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 5
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 6
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 6
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 7
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 7
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 8
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 8
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 9
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 9
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 10
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 10
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 11
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 11
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			countHospital
			,countDoctorshare
			,NAME
			)
		VALUES (
			(
				SELECT sum(HospitalAmt) AS Hospital
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 12
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,(
				SELECT sum(DoctorAmt) AS Doctorshare
				FROM testmaster
				WHERE TestTypeID=2
					AND (
						MONTH(CreatedDate) = 12
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
END
