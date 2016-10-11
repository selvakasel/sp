Alter PROCEDURE Sp_rptLabInvestigations -- Sp_rptLabInvestigations '1','2015-06-19','2016-06-29','1428','1016'
     @clientid INT
	,@fromdate DATETIME
	,@todate DATETIME
	,@PatientID BIGINT
	,@testID BIGINT = 0
	
AS
IF (@testID > 0)
BEGIN
	SELECT *
	FROM [vw_LabResult_rpt]
	WHERE convert(DATETIME, convert(VARCHAR, CreatedDate, 101), 101) BETWEEN convert(DATETIME, convert(VARCHAR, cast(@fromdate AS DATETIME), 101), 101)
			AND convert(DATETIME, convert(VARCHAR, cast(@todate AS DATETIME), 101), 101) AND PatientID = @PatientID
		AND testid = @testID AND InputType=0 AND convert(DATE,ResultEntryDate) = convert(DATE, ResultEntryDate)
END
ELSE
BEGIN
	SELECT *
	FROM [vw_LabResult_rpt]
	WHERE convert(DATETIME, convert(VARCHAR, CreatedDate, 101), 101) BETWEEN convert(DATETIME, convert(VARCHAR, cast(@fromdate AS DATETIME), 101), 101)
			AND convert(DATETIME, convert(VARCHAR, cast(@todate AS DATETIME), 101), 101)
		AND PatientID = @PatientID
END


--select d.patientid ,c.testid,
--    CASE WHEN c.inputtype = 0
--	THEN cast (a.ValueEntered AS NUMERIC(18, 2))
--		END AS Numericresult
-- from ResultEntryDetail a 
--inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID 
--inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID


-- [dbo].[vw_LabResult_rpt]