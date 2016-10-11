
Alter PROCEDURE Reference_count_ss     --  Reference_count_ss  '2016-04-01', '2016-04-09'

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
		SELECT count(ReferenceDoctorID) AS CountVal
			,Clinicname AS NAME
		FROM referencedoctor
		WHERE Clinicname = 'AyyarClinic'
			OR Clinicname = 'OrthoClinic'
			OR Clinicname = 'RanyClinic'
			OR Clinicname = 'RotaryClinic'
			OR Clinicname = 'ChildTrust'
		GROUP BY Clinicname
	END
	ELSE
	BEGIN
		SELECT count(ReferenceDoctorID) AS CountVal
			,Clinicname AS NAME
		FROM referencedoctor
		WHERE Clinicname = 'AyyarClinic'
			OR Clinicname = 'OrthoClinic'
			OR Clinicname = 'RanyClinic'
			OR Clinicname = 'RotaryClinic'
			OR Clinicname = 'ChildTrust'
			AND (CreatedDate BETWEEN @Fromdate AND @Todate)
		GROUP BY Clinicname
	END
END


--select * from referencedoctor
