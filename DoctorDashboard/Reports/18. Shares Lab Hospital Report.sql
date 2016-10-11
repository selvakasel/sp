alter PROCEDURE Shares_Lab_Hospital_Report --  Shares_Lab_Hospital_Report 'mar','2016'
	(
	@set VARCHAR(max)
	,@Fromdate VARCHAR(max) = ''
	)
AS
BEGIN
	IF (@fromdate = '')
	BEGIN
		IF (@set = 'Jan')
		BEGIN
			SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
				AND (month(CreatedDate) = 1	AND (year(CreatedDate) = YEAR(getdate())))
		END
		ELSE
			IF (@set = 'Feb')
			BEGIN
				SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
					AND (
						month(CreatedDate) = 2
						AND (year(CreatedDate) = YEAR(getdate()))
						)
			END
			ELSE
				IF (@set = 'Mar')
				BEGIN
					SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
						AND (
							month(CreatedDate) = 3
							AND (year(CreatedDate) = YEAR(getdate()))
							)
				END
				ELSE
					IF (@set = 'Apr')
					BEGIN
						SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
							AND (
								month(CreatedDate) = 4
								AND (year(CreatedDate) = YEAR(getdate()))
								)
					END
					ELSE
						IF (@set = 'May')
						BEGIN
							SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
								AND (
									month(CreatedDate) = 5
									AND (year(CreatedDate) = YEAR(getdate()))
									)
						END
						ELSE
							IF (@set = 'Jun')
							BEGIN
								SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
									AND (
										month(CreatedDate) = 6
										AND (year(CreatedDate) = YEAR(getdate()))
										)
							END
							ELSE
								IF (@set = 'Jul')
								BEGIN
									SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
										AND (
											month(CreatedDate) = 7
											AND (year(CreatedDate) = YEAR(getdate()))
											)
								END
								ELSE
									IF (@set = 'Aug')
									BEGIN
										SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
											AND (
												month(CreatedDate) = 8
												AND (year(CreatedDate) = YEAR(getdate()))
												)
									END
									ELSE
										IF (@set = 'Sep')
										BEGIN
											SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
												AND (
													month(CreatedDate) = 9
													AND (year(CreatedDate) = YEAR(getdate()))
													)
										END
										ELSE
											IF (@set = 'Oct')
											BEGIN
												SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
													AND (
														month(CreatedDate) = 10
														AND (year(CreatedDate) = YEAR(getdate()))
														)
											END
											ELSE
												IF (@set = 'Nov')
												BEGIN
													SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
														AND (
															month(CreatedDate) = 11
															AND (year(CreatedDate) = YEAR(getdate()))
															)
												END
												ELSE
													IF (@set = 'Dec')
													BEGIN
														SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
															AND (
																month(CreatedDate) = 12
																AND (year(CreatedDate) = YEAR(getdate()))
																)
													END
	END
	ELSE
	BEGIN
		IF (@set = 'Jan')
		BEGIN
			SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
				AND (
					month(CreatedDate) = 1
					AND (year(CreatedDate) = YEAR(@Fromdate))
					)
		END
		ELSE
			IF (@set = 'Feb')
			BEGIN
				SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
					AND (
						month(CreatedDate) = 2
						AND (year(CreatedDate) = YEAR(@Fromdate))
						)
			END
			ELSE
				IF (@set = 'Mar')
				BEGIN
					SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
						AND (
							month(CreatedDate) = 3
							AND (year(CreatedDate) = YEAR(@Fromdate))
							)
				END
				ELSE
					IF (@set = 'Apr')
					BEGIN
						SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
							AND (
								month(CreatedDate) = 4
								AND (year(CreatedDate) = YEAR(@Fromdate))
								)
					END
					ELSE
						IF (@set = 'May')
						BEGIN
							SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
								AND (
									month(CreatedDate) = 5
									AND (year(CreatedDate) = YEAR(@Fromdate))
									)
						END
						ELSE
							IF (@set = 'Jun')
							BEGIN
								SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
									AND (
										month(CreatedDate) = 6
										AND (year(CreatedDate) = YEAR(@Fromdate))
										)
							END
							ELSE
								IF (@set = 'Jul')
								BEGIN
									SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
										AND (
											month(CreatedDate) = 7
											AND (year(CreatedDate) = YEAR(@Fromdate))
											)
								END
								ELSE
									IF (@set = 'Aug')
									BEGIN
										SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
											AND (
												month(CreatedDate) = 8
												AND (year(CreatedDate) = YEAR(@Fromdate))
												)
									END
									ELSE
										IF (@set = 'Sep')
										BEGIN
											SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
												AND (
													month(CreatedDate) = 9
													AND (year(CreatedDate) = YEAR(@Fromdate))
													)
										END
										ELSE
											IF (@set = 'Oct')
											BEGIN
												SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
													AND (
														month(CreatedDate) = 10
														AND (year(CreatedDate) = YEAR(@Fromdate))
														)
											END
											ELSE
												IF (@set = 'Nov')
												BEGIN
													SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
														AND (
															month(CreatedDate) = 11
															AND (year(CreatedDate) = YEAR(@Fromdate))
															)
												END
												ELSE
													IF (@set = 'Dec')
													BEGIN
														SELECT TestID,TestName,HospitalAmt FROM testmaster WHERE TestTypeID=1
															AND (
																month(CreatedDate) = 12
																AND (year(CreatedDate) = YEAR(@Fromdate))
																)
													END
	END
END