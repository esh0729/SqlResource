--=================================================================
-- 테이블 이름		: 영웅
-- 마지막 수정자	: 이상현
--=================================================================
CREATE TABLE t_Hero
(
	accountId				uniqueidentifier		NOT NULL,
	heroId					uniqueidentifier		NOT NULL,
	name					nvarchar(50)			NOT NULL,
	characterId				int						NOT NULL,
	lastLoginTime			datetimeoffset				NULL,
	lastLogoutTime			datetimeoffset				NULL,
	lastContinentId			int						NOT NULL,
	lastXPosition			float					NOT NULL,
	lastYPosition			float					NOT NULL,
	lastZPosition			float					NOT NULL,
	lastYRotation			float					NOT NULL,
	regTime					datetimeoffset			NOT NULL,

	CONSTRAINT pk_t_Hero PRIMARY KEY NONCLUSTERED (
		accountId, heroId
	) ON [INDEX]
) ON [TABLE]
GO

CREATE INDEX idx_t_Hero__accountId ON t_Hero (accountId) ON [INDEX]
GO
CREATE INDEX idx_t_Hero__heroId ON t_Hero (heroId) ON [INDEX]
GO

ALTER TABLE t_Hero ADD
	CONSTRAINT df_t_Hero__lastContinentId	DEFAULT(0)	FOR lastContinentId,
	CONSTRAINT df_t_Hero__lastXPosition		DEFAULT(0)	FOR lastXPosition,
	CONSTRAINT df_t_Hero__lastYPosition		DEFAULT(0)	FOR lastYPosition,
	CONSTRAINT df_t_Hero__lastZPosition		DEFAULT(0)	FOR lastZPosition,
	CONSTRAINT df_t_Hero__lastYRotation		DEFAULT(0)	FOR lastYRotation
GO

--