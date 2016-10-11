

CREATE PROCEDURE Reffered_To_Report -- Reffered_To_Report  'Pharmacy' ,'2015-01-01', '2016-04-01'
	(
	@set VARCHAR(max)
	,@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN
	IF (
			@fromdate = ''
			AND @Todate = ''
			)
	BEGIN
	  IF (@set = 'Laboratory')
		BEGIN
			SELECT PatientName,PatientID,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, PatientDOB, 103)) AS age ,
		    case PatientSex when 1 then 'Male' when 2 then 'Female' end as Gender from Invoice where DoctorID=6 and Activeflag = 1
		END
	 ELSE IF (@set = 'Pharmacy')
	    BEGIN
			select CreatedDate,Doctorid, Doctorname from SO_SalesOrder where doctorid is not null and ActiveFlag=1
		END
	ELSE IF (@set = 'Radiology')
		BEGIN
		   select CreatedDate,ChargeID ,ChargeName,DepartmentID from Charges where DepartmentID=10  and activeflag = 1
		END
				
	END
	ELSE
	BEGIN
	  IF (@set = 'Laboratory')
		BEGIN
			SELECT PatientName,PatientID,DATEPART(YEAR, getdate()) - DATEPART(YEAR, convert(DATE, PatientDOB, 103)) AS age ,
		    case PatientSex when 1 then 'Male' when 2 then 'Female' end as Gender from Invoice where DoctorID=6 and Activeflag = 1
			and CreatedDate BETWEEN @Fromdate AND @Todate
						
		END
	 ELSE IF (@set = 'Pharmacy')
	    BEGIN
			select CreatedDate,Doctorid, Doctorname from SO_SalesOrder where doctorid is not null and ActiveFlag=1 and CreatedDate BETWEEN @Fromdate AND @Todate
		END
	ELSE IF (@set = 'Radiology')
		BEGIN
		   select CreatedDate,ChargeID ,ChargeName,DepartmentID from Charges where DepartmentID=10  and activeflag = 1 and CreatedDate BETWEEN @Fromdate AND @Todate
		END
				
	END
END
