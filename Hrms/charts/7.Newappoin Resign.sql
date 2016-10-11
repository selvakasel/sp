CREATE PROCEDURE Newappoin_resign ---     Newappoin_resign '2015'
	(@Fromdate VARCHAR(max) = '')
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		NewJoining BIGINT
		,Resigned BIGINT
		,Terminated BIGINT
		,Discontinued BIGINT
		,NAME VARCHAR(20)
		)

	IF (@Fromdate = '')
		--AND @Todate = ''
	BEGIN
		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 1
						AND YEAR(DOJ) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 1
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 1
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 1
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 2
						AND YEAR(DOJ) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 2
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 2
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 2
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 3
						AND YEAR(DOJ) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 3
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 3
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 3
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 4
						AND YEAR(DOJ) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 4
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 4
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 4
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 5
						AND YEAR(DOJ) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 5
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 5
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 5
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 6
						AND YEAR(DOJ) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 6
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 6
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 6
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 7
						AND YEAR(DOJ) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 7
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 7
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 7
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 8
						AND YEAR(DOJ) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 8
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 8
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 8
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 9
						AND YEAR(DOJ) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 9
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 9
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 9
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 10
						AND YEAR(DOJ) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 10
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 10
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 10
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 11
						AND YEAR(DOJ) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 11
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 11
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 11
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 12
						AND YEAR(DOJ) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 12
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 12
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 12
						AND YEAR(Relivingdate) = YEAR(GETDATE())
						)
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
	ELSE
	BEGIN
		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 1
						AND YEAR(DOJ) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 1
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 1
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 1
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 2
						AND YEAR(DOJ) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 2
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 2
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 2
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 3
						AND YEAR(DOJ) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 3
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 3
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 3
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 4
						AND YEAR(DOJ) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 4
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 4
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 4
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 5
						AND YEAR(DOJ) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 5
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 5
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 5
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 6
						AND YEAR(DOJ) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 6
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 6
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 6
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 7
						AND YEAR(DOJ) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 7
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 7
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 7
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 8
						AND YEAR(DOJ) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 8
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 8
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 8
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 9
						AND YEAR(DOJ) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 9
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 9
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 9
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 10
						AND YEAR(DOJ) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 10
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 10
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 10
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 11
						AND YEAR(DOJ) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 11
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 11
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 11
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			NewJoining
			,Resigned
			,Terminated
			,Discontinued
			,NAME
			)
		VALUES (
			(
				SELECT count(*)
				FROM OfficialDetails o
				INNER JOIN EmployeeMaster e ON o.EmployeeID = e.EmployeeID
				WHERE e.Activeflag = 1
					AND (
						MONTH(DOJ) = 12
						AND YEAR(DOJ) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Resigned'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 12
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Terminated'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 12
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(*)
				FROM dbo_EmployeeTermination t
				INNER JOIN EmployeeMaster e ON t.EmployeeID = e.EmployeeID
				WHERE type = 'Discontinued'
					AND exitflag = 0
					AND e.Activeflag = 0
					AND (
						MONTH(Relivingdate) = 12
						AND YEAR(Relivingdate) = YEAR(@Fromdate)
						)
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
END
	--CREATE PROCEDURE Newappoin_resign              ---     Newappoin_resign '2015-02-01 13:00:51.637'
	--(
	--	@Fromdate VARCHAR(max) = ''
	--	)
	--AS
	--BEGIN
	--	DECLARE @listOfIDs TABLE (
	--		CountNew BIGINT
	--		,CountExist BIGINT
	--		,NAME VARCHAR(20)
	--		)
	--	IF (@Fromdate = '')
	--		--AND @Todate = ''
	--	BEGIN
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID)as Newjoining FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 1
	--						AND YEAR(CreatedDate) = YEAR(GETDATE())
	--						)
	--				)
	--			,(
	--				  SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 1
	--						AND YEAR(b.Relivingdate) = YEAR(GETDATE())
	--						)
	--				)
	--			,'Jan'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 2
	--						AND YEAR(CreatedDate) = YEAR(GETDATE())
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 2
	--						AND YEAR(b.Relivingdate) = YEAR(GETDATE())
	--						)
	--				)
	--			,'Feb'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 3
	--						AND YEAR(CreatedDate) = YEAR(GETDATE())
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 3
	--						AND YEAR(b.Relivingdate) = YEAR(GETDATE())
	--						)
	--				)
	--			,'Mar'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 4
	--						AND YEAR(CreatedDate) = YEAR(GETDATE())
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 4
	--						AND YEAR(b.Relivingdate) = YEAR(GETDATE())
	--						)
	--				)
	--			,'Apr'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 5
	--						AND YEAR(CreatedDate) = YEAR(GETDATE())
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 5
	--						AND YEAR(b.Relivingdate) = YEAR(GETDATE())
	--						)
	--				)
	--			,'May'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 6
	--						AND YEAR(CreatedDate) = YEAR(GETDATE())
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 6
	--						AND YEAR(b.Relivingdate) = YEAR(GETDATE())
	--						)
	--				)
	--			,'Jun'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 7
	--						AND YEAR(CreatedDate) = YEAR(GETDATE())
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 7
	--						AND YEAR(b.Relivingdate) = YEAR(GETDATE())
	--						)
	--				)
	--			,'Jul'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 8
	--						AND YEAR(CreatedDate) = YEAR(GETDATE())
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 8
	--						AND YEAR(b.Relivingdate) = YEAR(GETDATE())
	--						)
	--				)
	--			,'Aug'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 9
	--						AND YEAR(CreatedDate) = YEAR(GETDATE())
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 9
	--						AND YEAR(b.Relivingdate) = YEAR(GETDATE())
	--						)
	--				)
	--			,'Sep'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 10
	--						AND YEAR(CreatedDate) = YEAR(GETDATE())
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 10
	--						AND YEAR(b.Relivingdate) = YEAR(GETDATE())
	--						)
	--				)
	--			,'Oct'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 11
	--						AND YEAR(CreatedDate) = YEAR(GETDATE())
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 11
	--						AND YEAR(b.Relivingdate) = YEAR(GETDATE())
	--						)
	--				)
	--			,'Nov'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 12
	--						AND YEAR(CreatedDate) = YEAR(GETDATE())
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 12
	--						AND YEAR(b.Relivingdate) = YEAR(GETDATE())
	--						)
	--				)
	--			,'Dec'
	--			)
	--		SELECT *
	--		FROM @listOfIDs
	--	END
	--	ELSE
	--	BEGIN
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID)as Newjoining FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 1
	--						AND YEAR(CreatedDate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,(
	--				  SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 1
	--						AND YEAR(b.Relivingdate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,'Jan'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 2
	--						AND YEAR(CreatedDate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 2
	--						AND YEAR(b.Relivingdate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,'Feb'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 3
	--						AND YEAR(CreatedDate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 3
	--						AND YEAR(b.Relivingdate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,'Mar'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 4
	--						AND YEAR(CreatedDate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 4
	--						AND YEAR(b.Relivingdate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,'Apr'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 5
	--						AND YEAR(CreatedDate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 5
	--						AND YEAR(b.Relivingdate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,'May'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 6
	--						AND YEAR(CreatedDate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 6
	--						AND YEAR(b.Relivingdate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,'Jun'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 7
	--						AND YEAR(CreatedDate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 7
	--						AND YEAR(b.Relivingdate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,'Jul'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 8
	--						AND YEAR(CreatedDate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 8
	--						AND YEAR(b.Relivingdate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,'Aug'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 9
	--						AND YEAR(CreatedDate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 9
	--						AND YEAR(b.Relivingdate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,'Sep'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 10
	--						AND YEAR(CreatedDate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 10
	--						AND YEAR(b.Relivingdate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,'Oct'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 11
	--						AND YEAR(CreatedDate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 11
	--						AND YEAR(b.Relivingdate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,'Nov'
	--			)
	--		INSERT INTO @listOfIDs (
	--			CountNew
	--			,CountExist
	--			,NAME
	--			)
	--		VALUES (
	--			(
	--				SELECT count(DISTINCT EmployeeID) FROM EmployeeMaster WHERE Activeflag = 1
	--					AND (
	--						MONTH(CreatedDate) = 12
	--						AND YEAR(CreatedDate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,(
	--				 SELECT  Count(distinct a.EmployeeID) FROM EmployeeMaster a INNER JOIN dbo_EmployeeTermination b
	--                ON a.EmployeeID = b.EmployeeID where a.Activeflag = 0 and b.Activeflag = 1 and b.exitflag=0
	--					AND (
	--						MONTH(b.Relivingdate) = 12
	--						AND YEAR(b.Relivingdate) = YEAR(@Fromdate)
	--						)
	--				)
	--			,'Dec'
	--			)
	--		SELECT *
	--		FROM @listOfIDs
	--	END
	--END
