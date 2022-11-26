ALTER TABLE t_Hero DROP CONSTRAINT
	df_t_Hero__lastContinentId
GO
ALTER TABLE t_Hero DROP	COLUMN
	lastContinentId
GO

ALTER TABLE t_Hero ADD
	lastLocationId		int			NOT NULL CONSTRAINT df_t_Hero_lastLocationId DEFAULT(0)
GO