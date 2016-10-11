

CREATE PROCEDURE TypesofClient 
AS
BEGIN
	
select  b.Code as Type , count(a.ClientID) As Client from  EcMyClient a 
inner join EcMyClientType b on a.ClientTypeID=b.ClientTypeID group by b.code 
	
END







--select * from EcMyClientType
--select * from EcMyClient