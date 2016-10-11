
Alter PROCEDURE patient_waiting_time_Report   -- patient_waiting_time_Report '2015-08-26 10:20:34.457'
(@Fromdate VARCHAR(max) = '')
AS
BEGIN
	IF (@Fromdate = '')
	BEGIN
		 select ROW_NUMBER() OVER (ORDER BY a.ClientID) AS Patient, b.FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age,
	     DateDiff(minute, a.RegistrationDate, a.Visteddate)  as Minutes, a.Visteddate  from registration a inner join  patient b
		on a.PatientID=b.PatientID where  a.Visitedby = 1

	END
	ELSE
	BEGIN
		 select ROW_NUMBER() OVER (ORDER BY a.ClientID) AS Patient, b.FirstName,Sex,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, DateofBirth, 103)) AS age,
			 DateDiff(minute, a.RegistrationDate, a.Visteddate)  as Minutes ,a.Visteddate from registration a inner join  patient b
			  on a.PatientID=b.PatientID where  a.Visitedby = 1 and a.Visteddate = @Fromdate 

   END
 END


