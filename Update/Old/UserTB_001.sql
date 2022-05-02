ALTER TABLE t_User ADD
	lastJoinedServer		int				NOT NULL CONSTRAINT df_t_User__lastJoinedServer DEFAULT(0),
	lastJoinedIPAddress		varchar(50)			NULL,
	regTime					datetimeoffset	NOT NULL CONSTRAINT df_t_User__regTime DEFAULT(SYSDATETIMEOFFSET())
GO

--