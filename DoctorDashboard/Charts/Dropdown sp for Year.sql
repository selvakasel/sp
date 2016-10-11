


CREATE PROCEDURE Sp_dropdownyear   ----   Sp_dropdownyear
	
AS
BEGIN

  select * from dropdownyear

end

CREATE PROCEDURE Sp_dropdownweek   ----   Sp_dropdownweek
	
AS
BEGIN

  select * from dropdownweek

end


create Table dropdownweek
(
 Weeks varchar(55)
 
)
select * from dropdownweek




create Table dropdownyear
(
 years varchar(55)
 
)

select * from dropdownyear



insert into dropdownweek values ('January')
insert into dropdownweek values ('February')
insert into dropdownweek values ('March')
insert into dropdownweek values ('April')
insert into dropdownweek values ('May')
insert into dropdownweek values ('June')
insert into dropdownweek values ('July')
insert into dropdownweek values ('August')
insert into dropdownweek values ('September')
insert into dropdownweek values ('October')
insert into dropdownweek values ('November')
insert into dropdownweek values ('December')



insert into dropdownyear values ('2054')
insert into dropdownyear values ('2055')
insert into dropdownyear values ('2056')
insert into dropdownyear values ('2057')
insert into dropdownyear values ('2058')
insert into dropdownyear values ('2059')
insert into dropdownyear values ('2060')
