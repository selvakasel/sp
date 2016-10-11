

ALTER PROCEDURE total_capacity_report   --   total_capacity_report '2'
(
@shift int)
AS
BEGIN
 select a.FirstName as Name,case a.Gender when 1 then 'Male' when 0 then 'Female' end as Gender,
 case b.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift from EmployeeMaster a
 INNER JOIN OfficialDetails b on a.EmployeeID = b.EmployeeID where   a.Activeflag = 1 and b.Shift=@shift 
 AND a.EmployeeID NOT IN (565,559,625,626,644,677,915)

END

  
