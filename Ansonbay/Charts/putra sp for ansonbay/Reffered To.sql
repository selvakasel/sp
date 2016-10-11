


Alter PROCEDURE Reffered_To  --Reffered_To '2014-02-24','2016-02-24'
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
				SELECT count(*) from Invoice where DoctorID=6 and activeflag = 1
				)
			,'Laboratory'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				select count(Doctorid) from SO_SalesOrder where activeflag = 1
				)
			,'Pharmacy'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				select count(DepartmentID) from Charges where DepartmentID=10  and activeflag = 1
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
				SELECT count(*) from Invoice where DoctorID=6
				and (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)and activeflag = 1
				)
			,'Laboratory'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				select count(Doctorid) from SO_SalesOrder
				WHERE (
						CreatedDate BETWEEN @Fromdate
							AND @Todate 
						) and activeflag = 1
				)
			,'Pharmacy'
			)

			INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				select count(DepartmentID) from Charges where DepartmentID=10 
				And (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						) and activeflag = 1
				)
			,'Radiology'
			)

		SELECT *
		FROM @listOfIDs
	END
END
	
