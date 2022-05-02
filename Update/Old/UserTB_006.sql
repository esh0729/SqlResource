ALTER TABLE s_GameServer ADD
	connectionAddress		varchar(50)			NOT NULL CONSTRAINT df_tmp01 DEFAULT('')
GO
ALTER TABLE s_GameServer DROP CONSTRAINT
	df_tmp01
GO

--