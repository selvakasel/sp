

ALTER PROCEDURE Shares_Pharmacy_Doctor_report --  Shares_Pharmacy_Doctor_report 'Feb','2016-01-01 11:46:21.740'
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
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 1
					AND YEAR(a.CreatedDate) = YEAR(GETDATE())
					)
		END
		ELSE
			IF (@set = 'Feb')
			BEGIN
				SELECT a.ProdID
					,a.PurchasePrice
					,a.SalesPrice
					,a.DoctorPrice
					,b.NAME
				FROM BASE_InventoryCost a
				INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
				WHERE DoctorPrice IS NOT NULL
					AND (
						MONTH(a.CreatedDate) = 2
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
			END
			ELSE
				IF (@set = 'Mar')
				BEGIN
					SELECT a.ProdID
						,a.PurchasePrice
						,a.SalesPrice
						,a.DoctorPrice
						,b.NAME
					FROM BASE_InventoryCost a
					INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
					WHERE DoctorPrice IS NOT NULL
						AND (
							MONTH(a.CreatedDate) = 3
							AND YEAR(a.CreatedDate) = YEAR(GETDATE())
							)
				END
				ELSE
					IF (@set = 'Apr')
					BEGIN
						SELECT a.ProdID
							,a.PurchasePrice
							,a.SalesPrice
							,a.DoctorPrice
							,b.NAME
						FROM BASE_InventoryCost a
						INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
						WHERE DoctorPrice IS NOT NULL
							AND (
								MONTH(a.CreatedDate) = 4
								AND YEAR(a.CreatedDate) = YEAR(GETDATE())
								)
					END
					ELSE
						IF (@set = 'May')
						BEGIN
							SELECT a.ProdID
								,a.PurchasePrice
								,a.SalesPrice
								,a.DoctorPrice
								,b.NAME
							FROM BASE_InventoryCost a
							INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
							WHERE DoctorPrice IS NOT NULL
								AND (
									MONTH(a.CreatedDate) = 5
									AND YEAR(a.CreatedDate) = YEAR(GETDATE())
									)
						END
						ELSE
							IF (@set = 'Jun')
							BEGIN
								SELECT a.ProdID
									,a.PurchasePrice
									,a.SalesPrice
									,a.DoctorPrice
									,b.NAME
								FROM BASE_InventoryCost a
								INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
								WHERE DoctorPrice IS NOT NULL
									AND (
										MONTH(a.CreatedDate) = 5
										AND YEAR(a.CreatedDate) = YEAR(GETDATE())
										)
							END
							ELSE
								IF (@set = 'Jul')
								BEGIN
									SELECT a.ProdID
										,a.PurchasePrice
										,a.SalesPrice
										,a.DoctorPrice
										,b.NAME
									FROM BASE_InventoryCost a
									INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
									WHERE DoctorPrice IS NOT NULL
										AND (
											MONTH(a.CreatedDate) = 6
											AND YEAR(a.CreatedDate) = YEAR(GETDATE())
											)
								END
								ELSE
									IF (@set = 'Aug')
									BEGIN
										SELECT a.ProdID
											,a.PurchasePrice
											,a.SalesPrice
											,a.DoctorPrice
											,b.NAME
										FROM BASE_InventoryCost a
										INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
										WHERE DoctorPrice IS NOT NULL
											AND (
												MONTH(a.CreatedDate) = 7
												AND YEAR(a.CreatedDate) = YEAR(GETDATE())
												)
									END
									ELSE
										IF (@set = 'Sep')
										BEGIN
											SELECT a.ProdID
												,a.PurchasePrice
												,a.SalesPrice
												,a.DoctorPrice
												,b.NAME
											FROM BASE_InventoryCost a
											INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
											WHERE DoctorPrice IS NOT NULL
												AND (
													MONTH(a.CreatedDate) = 7
													AND YEAR(a.CreatedDate) = YEAR(GETDATE())
													)
										END
										ELSE
											IF (@set = 'Oct')
											BEGIN
												SELECT a.ProdID
													,a.PurchasePrice
													,a.SalesPrice
													,a.DoctorPrice
													,b.NAME
												FROM BASE_InventoryCost a
												INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
												WHERE DoctorPrice IS NOT NULL
													AND (
														MONTH(a.CreatedDate) = 7
														AND YEAR(a.CreatedDate) = YEAR(GETDATE())
														)
											END
											ELSE
												IF (@set = 'Nov')
												BEGIN
													SELECT a.ProdID
														,a.PurchasePrice
														,a.SalesPrice
														,a.DoctorPrice
														,b.NAME
													FROM BASE_InventoryCost a
													INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
													WHERE DoctorPrice IS NOT NULL
														AND (
															MONTH(a.CreatedDate) = 11
															AND YEAR(a.CreatedDate) = YEAR(GETDATE())
															)
												END
												ELSE
													IF (@set = 'Dec')
													BEGIN
														SELECT a.ProdID
															,a.PurchasePrice
															,a.SalesPrice
															,a.DoctorPrice
															,b.NAME
														FROM BASE_InventoryCost a
														INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
														WHERE DoctorPrice IS NOT NULL
															AND (
																MONTH(a.CreatedDate) = 12
																AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
																)
													END
	END
	ELSE
	BEGIN
		IF (@set = 'Jan')
		BEGIN
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 1
					AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
					)
		END
		ELSE
		IF (@set = 'Feb')
		BEGIN
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 2
					AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
					)
		END
		ELSE
		IF (@set = 'Mar')
		BEGIN
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 3
					AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
					)
		END
		ELSE
		IF (@set = 'Apr')
		BEGIN
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 4
					AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
					)
		END
		ELSE
		IF (@set = 'May')
		BEGIN
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 5
					AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
					)
		END
		ELSE
		IF (@set = 'Jun')
		BEGIN
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 6
					AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
					)
		END
		ELSE
		IF (@set = 'Jul')
		BEGIN
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 7
					AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
					)
		END
		ELSE
		IF (@set = 'Aug')
		BEGIN
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 8
					AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
					)
		END
		ELSE
		IF (@set = 'Sep')
		BEGIN
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 9
					AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
					)
		END
		ELSE
		IF (@set = 'Oct')
		BEGIN
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 10
					AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
					)
		END
		ELSE
		IF (@set = 'Nov')
		BEGIN
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 11
					AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
					)
		END
		
		IF (@set = 'Dec')
		BEGIN
			SELECT a.ProdID
				,a.PurchasePrice
				,a.SalesPrice
				,a.DoctorPrice
				,b.NAME
			FROM BASE_InventoryCost a
			INNER JOIN BASE_Product b ON a.ProdID = b.ProdID
			WHERE DoctorPrice IS NOT NULL
				AND (
					MONTH(a.CreatedDate) = 12
					AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
					)
		END
	END
END
