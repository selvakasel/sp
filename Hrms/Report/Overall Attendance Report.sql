


Alter procedure Overall_attendance_report    --  Overall_attendance_report '1' , '2016-03-02'
(
@Status tinyint,
@Dates VARCHAR(max) = ''

)
as
begin
IF (
			@Dates = ''
			
			)
	BEGIN
 select e.FirstName,case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift 
 ,a.attendancedate, case a.Status when 1 then 'Present' when 2 then 'Absent'  end as Attendence
      from AttendenceEntrynew a 
INNER JOIN EmployeeMaster e on a.EmployeeID = SUBSTRING(convert(varchar, e.Employeecode), 8,4)
INNER JOIN OfficialDetails o on e.EmployeeID = o.EmployeeID where e.Activeflag=1 and a.Status = @Status 
AND a.Attendancedate = GETDATE()  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)
  END
	ELSE
	BEGIN

	select e.FirstName,case o.Shift when 1 then 'General' when 2 then 'Morning' when 3 then 'Evening' end as Shift 
 ,a.attendancedate, case a.Status when 1 then 'Present' when 2 then 'Absent'  end as Attendence
      from AttendenceEntrynew a 
INNER JOIN EmployeeMaster e on a.EmployeeID = SUBSTRING(convert(varchar, e.Employeecode), 8,4)
INNER JOIN OfficialDetails o on e.EmployeeID = o.EmployeeID where e.Activeflag=1 and a.Status = @Status
AND a.Attendancedate =@Dates  AND e.EmployeeID NOT IN (565,559,625,626,644,677,915)

END
END




  
 -- select * from OfficialDetails
 -- SELECT * FROM AttendenceEntrynew	
 -- select * from EmployeeMaster










