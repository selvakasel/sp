

CREATE PROCEDURE sp_doctor_share    -- sp_doctor_share


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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 1
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 1
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 2
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 2
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 3
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 3
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 4
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 4
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 5
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 5
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 6
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 6
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 7
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 7
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 8
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 8
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 9
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 9
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 10
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 10
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 11
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 11
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 12
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 12
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 1
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 1
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 2
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 2
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 3
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 3
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 4
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 4
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 5
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 5
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 6
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 6
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 7
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 7
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 8
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 8
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 9
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 9
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 10
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 10
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 11
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 11
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY DoctorPrice
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
				SELECT sum(HospitalPrice) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 12
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY HospitalPrice
				)
			,(
				SELECT sum(DoctorPrice) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(CreatedDate) = 12
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				GROUP BY DoctorPrice
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
END

