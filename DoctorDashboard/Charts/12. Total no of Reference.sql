ALTER PROCEDURE Reference_count_by --Reference_count_by '2014-02-24','2016-02-24'
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
				SELECT count(ReferenceDoctorID) AS ReferredFrom
				FROM referencedoctor
				WHERE ReferenceDoctorID IS NOT NULL
				)
			,'Referred From'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(RefClinicName)
				FROM DischargeSummary
				WHERE RefClinicName NOT LIKE 'null'
				)
			,'Referred To'
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
				SELECT count(ReferenceDoctorID) AS CountVal
				FROM referencedoctor
				WHERE (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Referred From'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(RefClinicName) AS CountVal
				FROM DischargeSummary
				WHERE (
						CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Referred To'
			)

		SELECT *
		FROM @listOfIDs
	END
END
	--select count(*)  from DischargeSummary where RefClinicName not like 'null'
