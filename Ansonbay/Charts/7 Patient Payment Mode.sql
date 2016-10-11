CREATE PROCEDURE PaymentMode 
AS
BEGIN
	
select count(a.PatientID)As Patient,b.Description as PaymentMode from  EcMyReceipt a
inner join EcMyPaymentMode b on a.EcPaymentModeID = b.EcPaymentModeID group by Description
	
END


--select * from  EcMyClient 
--select * from   EcMyClientType

















