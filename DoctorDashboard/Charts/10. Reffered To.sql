ALTER PROCEDURE Reffered_To --Reffered_To '2014-02-24','2016-02-24'
	(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
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
				SELECT count(*)
				FROM Invoice
				WHERE DoctorID = 6
					AND activeflag = 1
				)
			,'Laboratory'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(Doctorid)
				FROM SO_SalesOrder
				WHERE activeflag = 1
				)
			,'Pharmacy'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(DepartmentID)
				FROM Charges
				WHERE DepartmentID = 10
					AND activeflag = 1
				)
			,'Radiology'
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
				SELECT count(*)
				FROM Invoice
				WHERE DoctorID = 6
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
					AND activeflag = 1
				)
			,'Laboratory'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(Doctorid)
				FROM SO_SalesOrder
				WHERE (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
					AND activeflag = 1
				)
			,'Pharmacy'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(DepartmentID)
				FROM Charges
				WHERE DepartmentID = 10
					AND (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
					AND activeflag = 1
				)
			,'Radiology'
			)

		SELECT *
		FROM @listOfIDs
	END
END
