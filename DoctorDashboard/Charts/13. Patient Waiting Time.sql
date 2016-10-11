
CREATE PROCEDURE patient_waiting_time (
	@Fromdate VARCHAR(max) = ''
	
	)
AS
BEGIN
	

	IF (
			@Fromdate = ''
			
			)
	BEGIN
		
           select   ROW_NUMBER() OVER (ORDER BY ClientID) AS Patient,  DateDiff(minute, RegistrationDate, Visteddate)  as Minutes
		     from registration where  Visitedby=1 

	END
	ELSE
	BEGIN
		 select   ROW_NUMBER() OVER (ORDER BY ClientID) AS Patient,  DateDiff(minute, RegistrationDate, Visteddate)  as Minutes
		     from registration where  Visitedby=1 and CreatedDate = @Fromdate 

   END
 END


