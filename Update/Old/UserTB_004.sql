ALTER TABLE s_GameServer DROP COLUMN
	characterNameRegex
GO

ALTER TABLE s_GameServer ADD
	heroNameRegex		nvarchar(50)		NOT NULL CONSTRAINT df_tmp01 DEFAULT('')
GO
ALTER TABLE s_GameServer DROP CONSTRAINT
	df_tmp01
GO

ALTER TABLE r_GameConfig ADD
	heroCreationLimitCount		int			NOT NULL CONSTRAINT df_tmp01 DEFAULT(0)
GO
ALTER TABLE r_GameConfig DROP CONSTRAINT
	df_tmp01
GO

--