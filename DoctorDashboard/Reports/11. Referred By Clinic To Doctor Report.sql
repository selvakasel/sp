



Alter PROCEDURE Clinic_To_Doctor_Report --  Clinic_To_Doctor_Report  'OrthoClinic' , '2015-01-01', '2016-04-09'

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
  SELECT ReferenceDoctorID,Firstname AS PatientName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DOB, 103)) AS age,
	Clinicname FROM referencedoctor	WHERE activeflag = 1 AND Clinicname = @set

--	IF (@set = 'AyyarClinic')
--	  BEGIN
--		SELECT ReferenceDoctorID,Firstname AS PatientName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DOB, 103)) AS age,
--		Clinicname FROM referencedoctor	WHERE activeflag = 1 AND Clinicname = 'AyyarClinic'
--      END
--	ELSE IF (@set = 'OrthoClinic')
--	  BEGIN
--		SELECT	ReferenceDoctorID,Firstname AS PatientName,Sex,Clinicname,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DOB, 103)) AS age
--		 FROM referencedoctor WHERE activeflag = 1 AND Clinicname = 'OrthoClinic'
--      END
--	ELSE IF (@set = 'RanyClinic')
--	  BEGIN
--			SELECT	ReferenceDoctorID,Firstname AS PatientName,Sex,Clinicname ,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DOB, 103)) AS age
--			FROM referencedoctor WHERE activeflag = 1 AND Clinicname = 'RanyClinic'
--      END
--    ELSE IF (@set = 'RotaryClinic')
--	  BEGIN
--			SELECT ReferenceDoctorID,Firstname AS PatientName,Sex,Clinicname ,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DOB, 103)) AS age
--			FROM referencedoctor WHERE activeflag = 1 AND Clinicname = 'RotaryClinic'
--      END
--	ELSE IF (@set = 'ChildTrust')
--	  BEGIN
--			SELECT ReferenceDoctorID,Firstname AS PatientName,Sex,Clinicname,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DOB, 103)) AS age
--		FROM referencedoctor WHERE activeflag = 1 AND Clinicname = 'ChildTrust'
--      End

END

ELSE

BEGIN


   SELECT ReferenceDoctorID,Firstname AS PatientName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DOB, 103)) AS age,
	Clinicname FROM referencedoctor	WHERE activeflag = 1 AND Clinicname = @set AND (CreatedDate BETWEEN @Fromdate AND @Todate)


	--IF (@set = 'AyyarClinic')
	--  BEGIN
	--	SELECT ReferenceDoctorID,Firstname AS PatientName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DOB, 103)) AS age,
	--	Clinicname FROM referencedoctor	WHERE activeflag = 1 AND Clinicname = 'AyyarClinic' AND (CreatedDate BETWEEN @Fromdate AND @Todate)
 --     END
	--ELSE IF (@set = 'OrthoClinic')
	--  BEGIN
	--	SELECT	ReferenceDoctorID,Firstname AS PatientName,Sex,Clinicname,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DOB, 103)) AS age
	--	 FROM referencedoctor WHERE activeflag = 1 AND Clinicname = 'OrthoClinic' AND (CreatedDate BETWEEN @Fromdate AND @Todate)
 --     END
	--ELSE IF (@set = 'RanyClinic')
	--  BEGIN
	--		SELECT	ReferenceDoctorID,Firstname AS PatientName,Sex,Clinicname ,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DOB, 103)) AS age
	--		FROM referencedoctor WHERE activeflag = 1 AND Clinicname = 'RanyClinic' AND (CreatedDate BETWEEN @Fromdate AND @Todate)
 --     END
 --   ELSE IF (@set = 'RotaryClinic')
	--  BEGIN
	--		SELECT ReferenceDoctorID,Firstname AS PatientName,Sex,Clinicname ,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DOB, 103)) AS age
	--		FROM referencedoctor WHERE activeflag = 1 AND Clinicname = 'RotaryClinic' AND (CreatedDate BETWEEN @Fromdate AND @Todate)
 --     END
	--ELSE IF (@set = 'ChildTrust')
	--  BEGIN
	--		SELECT ReferenceDoctorID,Firstname AS PatientName,Sex,Clinicname,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DOB, 103)) AS age
	--	FROM referencedoctor WHERE activeflag = 1 AND Clinicname = 'ChildTrust' AND (CreatedDate BETWEEN @Fromdate AND @Todate)
 --     End

END
END	
	
	
	
	
	
	
	
	
	
	
	-- SELECT * FROM referencedoctor
