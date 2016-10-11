


Alter PROCEDURE Referred_whom_report   --   Referred_whom_report 'Aakashclinic','2015-04-01 ', '2016-04-08'

(
  @set VARCHAR(max)
 ,@Fromdate VARCHAR(max) = ''
 ,@Todate VARCHAR(max) = ''
)
AS
BEGIN

IF (
    @Fromdate = ''
    AND @Todate = ''
)

BEGIN

SELECT  RefClinicName, PatientName,sex,Age   FROM DischargeSummary WHERE RefClinicName IS NOT NULL and RefClinicName = @set

end

else

BEGIN

 SELECT  RefClinicName, PatientName,sex,Age   FROM DischargeSummary WHERE RefClinicName IS NOT NULL	
and RefClinicName = @set  AND CreatedDate BETWEEN @Fromdate AND @Todate
END
END



























--ALTER PROCEDURE Referred_whom_report   --   Referred_whom_report 'Aakashclinic','2015-04-01', '2016-04-08'

--(
--   @set VARCHAR(max)
--  ,@Fromdate VARCHAR(max) = ''
--  ,@Todate VARCHAR(max) = ''
--)
--AS
--BEGIN
--IF (
--			@Fromdate = ''
--			AND @Todate = ''
--			)
--BEGIN

--IF (@set = 'Aakashclinic')
--	  BEGIN
--		SELECT distinct	PatientName,sex,Age,RefClinicName	FROM DischargeSummary WHERE RefClinicName = 'Aakashclinic'
		
--	  END
--  ELSE IF (@set = 'apollo clinic')
--	 BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'apollo clinic'
--	 END
-- ELSE IF (@set = 'ChildTrust')
--	 BEGIN
--		SELECT   PatientName,sex,Age,RefClinicName FROM DischargeSummary WHERE RefClinicName = 'ChildTrust'
--	 END
-- ELSE IF (@set = 'Global Clinic')
--	BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary  WHERE RefClinicName = 'Global Clinic'
--	END
--ELSE IF (@set = 'mahalashmi hospital0')
--	BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'mahalashmi hospital'
--	END
--ELSE IF (@set = 'OrthoClinic')
--	BEGIN
--	   SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'OrthoClinic'
--	END
--ELSE IF (@set = 'rabindran')
--	BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'rabindran'
--	END
--ELSE IF (@set = 'RanyClinic')
--	BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'RanyClinic'
--	END
--ELSE IF (@set = 'RotaryClinic')
--	BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'RotaryClinic'
--	END
--ELSE IF (@set = 'sai clinic')
--	BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'sai clinic'
--	END
--ELSE IF (@set = 'SAI CLINICC')
--	BEGIN
--	   SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'SAI CLINICC'
--	END
											
--END

--ELSE

--BEGIN

--IF (@set = 'Aakashclinic')
--	  BEGIN
--		SELECT distinct	PatientName,sex,Age,RefClinicName	FROM DischargeSummary WHERE RefClinicName = 'Aakashclinic'
--		AND RefClinicName IS NOT NULL	AND CreatedDate BETWEEN @Fromdate AND @Todate
--	  END
--  ELSE IF (@set = 'apollo clinic')
--	 BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'apollo clinic'
--		AND RefClinicName IS NOT NULL	AND CreatedDate BETWEEN @Fromdate AND @Todate
--	 END
-- ELSE IF (@set = 'ChildTrust')
--	 BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary WHERE RefClinicName = 'ChildTrust'
--		AND RefClinicName IS NOT NULL	AND CreatedDate BETWEEN @Fromdate AND @Todate
--	 END
-- ELSE IF (@set = 'Global Clinic')
--	BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary  WHERE RefClinicName = 'Global Clinic'
--		AND RefClinicName IS NOT NULL	AND CreatedDate BETWEEN @Fromdate AND @Todate
--	END
--ELSE IF (@set = 'mahalashmi hospital0')
--	BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'mahalashmi hospital'
--		AND RefClinicName IS NOT NULL	AND CreatedDate BETWEEN @Fromdate AND @Todate
--	END
--ELSE IF (@set = 'OrthoClinic')
--	BEGIN
--	   SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'OrthoClinic'
--	   AND RefClinicName IS NOT NULL	AND CreatedDate BETWEEN @Fromdate AND @Todate
--	END
--ELSE IF (@set = 'rabindran')
--	BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'rabindran'
--		AND RefClinicName IS NOT NULL	AND CreatedDate BETWEEN @Fromdate AND @Todate
--	END
--ELSE IF (@set = 'RanyClinic')
--	BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'RanyClinic'
--		AND RefClinicName IS NOT NULL	AND CreatedDate BETWEEN @Fromdate AND @Todate
--	END
--ELSE IF (@set = 'RotaryClinic')
--	BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'RotaryClinic'
--		AND RefClinicName IS NOT NULL	AND CreatedDate BETWEEN @Fromdate AND @Todate
--	END
--ELSE IF (@set = 'sai clinic')
--	BEGIN
--		SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'sai clinic'
--		AND RefClinicName IS NOT NULL	AND CreatedDate BETWEEN @Fromdate AND @Todate
--	END
--ELSE IF (@set = 'SAI CLINICC')
--	BEGIN
--	   SELECT distinct PatientName,sex,Age,RefClinicName FROM DischargeSummary	WHERE RefClinicName = 'SAI CLINICC'
--	   AND RefClinicName IS NOT NULL	AND CreatedDate BETWEEN @Fromdate AND @Todate
--	END
											
--END


--END

--	-- SELECT * FROM registration
