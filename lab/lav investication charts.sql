
Alter PROCEDURE Sp_rptLabInvestigationscharts ---   Sp_rptLabInvestigationscharts  '2015-06-19','2016-08-01','6144','51'
   
	 @Fromdate DATETIME
	,@Todate DATETIME
	,@PatientID BIGINT
	--,@TestID BIGINT 	
   as 
   begin   
select convert(date,b.resultentrydate,103), LTRIM(RIGHT(CONVERT(VARCHAR(20), b.ResultEntryDate, 100), 7)) AS ResultentryTime,
CASE WHEN c.inputtype = 0 THEN left(ValueEntered, patindex('%[^0-9]%', ValueEntered+'.') - 1) END AS Numericresult 
 from ResultEntryDetail a 
inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
inner join testmaster c on a.TestID=c.TestID 
inner join Invoice d on d.InvoiceID=b.InvoiceID
where c.InputType=0 and b.InvoiceID=d.InvoiceID and d.Activeflag=1 and c.Activeflag=1
And  (b.ResultEntryDate BETWEEN @Fromdate AND @Todate )
and d.PatientID = @PatientID   
--AND c.TestID = @TestID

end




--select b.ResultEntryDate,LTRIM(RIGHT(CONVERT(VARCHAR(20), b.ResultEntryDate, 100), 7)) AS ResultentryTime,
--CASE WHEN c.inputtype = 0 THEN cast (a.ValueEntered AS NUMERIC(18, 2)) END AS Numericresult
-- from ResultEntryDetail a 
--inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID 
--inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID
--And  (b.ResultEntryDate BETWEEN @Fromdate AND @Todate )
--and d.PatientID = @PatientID   

















--Alter PROCEDURE Sp_rptLabInvestigationscharts ---   Sp_rptLabInvestigationscharts '2015-08-01','ALKALINE PHOSPHATASE'

--     @Clientid INT
--	,@Fromdate DATETIME
--	,@Todate DATETIME
--	,@PatientID BIGINT
--	,@TestID BIGINT 	
--AS
--BEGIN
--	DECLARE @fromdate1 DATETIME

	
--	SET @fromdate1 = CONVERT(DATETIME, CONVERT(VARCHAR(10), @fromdate, 112))

--	DECLARE @listOfIDs TABLE (
--		CountVal BIGINT
--		,NAME VARCHAR(20)
--		)

--	--IF (@Fromdate = '')
--	BEGIN
--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '00:00:00'
--AND CAST(ResultEntryDate AS TIME) < '01:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.TestID = @TestID and d.PatientID = @PatientID  
--					)
--				)
--			,'00:00 - 01:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '01:00:00'
--AND CAST(ResultEntryDate AS TIME) < '02:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'01:00 - 02:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '02:00:00'
--AND CAST(ResultEntryDate AS TIME) < '03:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'02:00 - 03:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '03:00:00'
--AND CAST(ResultEntryDate AS TIME) < '04:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'03:00 - 04:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '04:00:00'
--AND CAST(ResultEntryDate AS TIME) < '05:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'04:00 - 05:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '05:00:00'
--AND CAST(ResultEntryDate AS TIME) < '06:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'05:00 - 06:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '06:00:00'
--AND CAST(ResultEntryDate AS TIME) < '07:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'06:00 - 07:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '07:00:00'
--AND CAST(ResultEntryDate AS TIME) < '08:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'07:00 - 08:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '08:00:00'
--AND CAST(ResultEntryDate AS TIME) < '09:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'08:00 - 09:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '09:00:00'
--AND CAST(ResultEntryDate AS TIME) < '10:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'09:00 - 10:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '10:00:00'
--AND CAST(ResultEntryDate AS TIME) < '11:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'10:00 - 11:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '11:00:00'
--AND CAST(ResultEntryDate AS TIME) < '12:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'11:00 - 12:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '12:00:00'
--AND CAST(ResultEntryDate AS TIME) < '13:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'12:00 - 13:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '13:00:00'
--AND CAST(ResultEntryDate AS TIME) < '14:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'13:00 - 14:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '14:00:00'
--AND CAST(ResultEntryDate AS TIME) < '15:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'14:00 - 15:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '15:00:00'
--AND CAST(ResultEntryDate AS TIME) < '16:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'15:00 - 16:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '16:00:00'
--AND CAST(ResultEntryDate AS TIME) < '17:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'16:00 - 17:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '17:00:00'
--AND CAST(ResultEntryDate AS TIME) < '18:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'17:00 - 18:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '18:00:00'
--AND CAST(ResultEntryDate AS TIME) < '19:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'18:00 - 19:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '19:00:00'
--AND CAST(ResultEntryDate AS TIME) < '20:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'19:00 - 20:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '20:00:00'
--AND CAST(ResultEntryDate AS TIME) < '21:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'20:00 - 21:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '21:00:00'
--AND CAST(ResultEntryDate AS TIME) < '22:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'21:00 - 22:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '22:00:00'
--AND CAST(ResultEntryDate AS TIME) < '23:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'22:00 - 23:00'
--			)

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				(
--					select 
--CASE WHEN c.inputtype = 0	THEN cast (a.ValueEntered AS NUMERIC(18, 2))END AS Numericresult
-- from ResultEntryDetail a inner join ResultEntry b on a.ResultEntryID=b.ResultEntryID
--inner join testmaster c on a.TestID=c.TestID inner join Invoice d on d.InvoiceID=b.InvoiceID
--where c.InputType=0 and b.InvoiceID=d.InvoiceID and CAST(ResultEntryDate AS TIME) >= '23:00:00'
--AND CAST(ResultEntryDate AS TIME) < '00:00:00' AND convert(DATE, ResultEntryDate) = convert(DATE, @fromdate)
--AND c.testname =@Testname
--					)
--				)
--			,'23:00 - 00:00'
--			)

--		SELECT *
--		FROM @listOfIDs
--	END
	
--END
