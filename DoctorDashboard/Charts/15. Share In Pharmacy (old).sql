


CREATE PROCEDURE sp_doctor_share --  sp_doctor_share '2016-02-24 13:43:04.427' , '2016-02-24 13:43:04.427' 
	(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal VARCHAR(20)
		,NAME VARCHAR(20)
		)

	IF (
			@Fromdate = ''
			AND @Todate = ''
			)
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT (
						convert(VARCHAR, convert(DECIMAL(8, 2), (
									(
										SELECT sum(HospitalPrice)
										FROM BASE_InventoryCost
										) / 100
									))) + '%'
						) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
				GROUP BY HospitalPrice
				)
			,'Hospital'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT (
						convert(VARCHAR, convert(DECIMAL(8, 2), (
									(
										SELECT sum(DoctorPrice)
										FROM BASE_InventoryCost
										) / 100
									))) + '%'
						) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
				GROUP BY DoctorPrice
				)
			,'Doctorshare'
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
				SELECT (
						convert(VARCHAR, convert(DECIMAL(8, 2), (
									(
										SELECT sum(HospitalPrice)
										FROM BASE_InventoryCost
										) / 100
									))) + '%'
						) AS Hospital
				FROM BASE_InventoryCost
				WHERE hospitalprice IS NOT NULL
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				GROUP BY HospitalPrice
				)
			,'Hospital'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT (
						convert(VARCHAR, convert(DECIMAL(8, 2), (
									(
										SELECT sum(DoctorPrice)
										FROM BASE_InventoryCost
										) / 100
									))) + '%'
						) AS Doctorshare
				FROM BASE_InventoryCost
				WHERE DoctorPrice IS NOT NULL
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				GROUP BY DoctorPrice
				)
			,'Doctorshare'
			)

		SELECT *
		FROM @listOfIDs
	END
END

