ALTER TABLE t_Hero ADD
	previousContinentId			int				NOT NULL CONSTRAINT df_t_Hero__previousContinentId DEFAULT(0),
	previousXPosition			float			NOT NULL CONSTRAINT df_t_Hero__previousXPosition DEFAULT(0),
	previousYPosition			float			NOT NULL CONSTRAINT df_t_Hero__previousYPosition DEFAULT(0),
	previousZPosition			float			NOT NULL CONSTRAINT df_t_Hero__previousZPosition DEFAULT(0),
	previousYRotation			float			NOT NULL CONSTRAINT df_t_Hero__previousYRotation DEFAULT(0)
GO

--