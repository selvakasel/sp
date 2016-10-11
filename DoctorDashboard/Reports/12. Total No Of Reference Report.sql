Alter PROCEDURE Total_Reference_Report    --  Total_Reference_Report  'Referred from','2016-01-01', '2016-04-01 '
	
	(
	@set VARCHAR(max)
	,@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN

        IF (@Fromdate = ''	AND @Todate = '')

BEGIN
	IF (@set = 'Referred From')
	BEGIN
		SELECT  a.FirstName as Name,a.Sex,
        a.Clinicname FROM referencedoctor a	WHERE ReferenceDoctorID IS NOT NULL and ActiveFlag=1
    END
	ELSE IF (@set = 'Referred To')
	BEGIN
			SELECT  a.PatientName as Name,a.Sex
           ,a.RefClinicName as Clinicname   FROM DischargeSummary a	WHERE RefClinicName IS NOT NULL
    END

END
ELSE
BEGIN
	IF (@set = 'Referred From')
	BEGIN
		SELECT  a.FirstName as Name,a.Sex,
        a.Clinicname FROM referencedoctor a	WHERE ReferenceDoctorID IS NOT NULL and ActiveFlag=1 AND CreatedDate BETWEEN @Fromdate AND @Todate
    END
	ELSE IF (@set = 'Referred To')
	BEGIN
			SELECT  a.PatientName as Name,a.Sex,a.RefClinicName as Clinicname   FROM DischargeSummary a	
			WHERE RefClinicName IS NOT NULL AND CreatedDate BETWEEN @Fromdate AND @Todate
    END

END
END













	-- SELECT * FROM referencedoctor
	--SELECT * FROM DischargeSummary
