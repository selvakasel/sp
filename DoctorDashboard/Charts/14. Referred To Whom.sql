
ALTER PROCEDURE Refered_To_Whom --   Refered_To_Whom '2016-01-01','2016-05-05' 
	(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN
	IF (
			@Fromdate = ''
			AND @Todate = ''
			)
	BEGIN
		SELECT  RefClinicName AS NAME
			,count( RefClinicName) AS CountVal
		FROM DischargeSummary
		WHERE RefClinicName IS NOT NULL
		GROUP BY RefClinicName
	END
	ELSE
	BEGIN
		SELECT RefClinicName AS NAME
			,count(RefClinicName) AS CountVal
		FROM DischargeSummary
		WHERE RefClinicName IS NOT NULL
			AND CreatedDate BETWEEN @Fromdate
				AND @Todate
		GROUP BY RefClinicName
	END
END
	--SELECT DISTINCT RefClinicName AS NAME,count(DISTINCT RefClinicName) AS CountVal	FROM DischargeSummary	WHERE RefClinicName IS NOT NULL	GROUP BY RefClinicName
