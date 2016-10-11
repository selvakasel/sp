ALTER PROCEDURE Dept_wise_salary
AS
BEGIN
	SELECT d.DepartmentName AS NAME
		,sum(s.NetSalary) AS CountVal
	FROM OfficialDetails o
	INNER JOIN department d ON o.DepartmentID = d.DepartmentID
	INNER JOIN SALARYGEN s ON o.EmployeeID = s.EmployeeID
	WHERE o.Activeflag = 1
		AND d.Activeflag = 1
		AND o.EmployeeID NOT IN (
			565
			,559
			,625
			,626
			,644
			,677
			,915
			)
	GROUP BY d.DepartmentName
END
	-- SELECT DISTINCT c.DepartmentName AS NAME,sum(a.NetSalary) AS CountVal FROM salarygen a	
	-- INNER JOIN TranferPromotion b ON b.EmployeeID = a.EmployeeID
	-- INNER JOIN department c ON c.DepartmentID = b.DepartmentId INNER JOIN EmployeeMaster d on d.EmployeeID=a.EmployeeID
	-- WHERE d.Activeflag = 1	GROUP BY c.DepartmentName	
	--	select * from OfficialDetails
	--	select * from department
	--	select * from SALARYGEN
