--=================================================================
-- 테이블 이름		: 계정
-- 마지막 수정자	: 이상현
--=================================================================
CREATE TABLE t_Account
(
	accountId		uniqueidentifier		NOT NULL,
	userId			uniqueidentifier		NOT NULL,
	regTime			datetimeoffset			NOT NULL,

	CONSTRAINT pk_t_Account PRIMARY KEY NONCLUSTERED (
		accountId
	) ON [INDEX]
) ON [TABLE]
GO

CREATE INDEX idx_t_Account__userId ON t_Account (userId) ON [INDEX]
GO

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
	//lastContinentId			int						NOT NULL,
	lastXPosition			float					NOT NULL,
	lastYPosition			float					NOT NULL,
	lastZPosition			float					NOT NULL,
	lastYRotation			float					NOT NULL,
	previousContinentId		int						NOT NULL,
	previousXPosition		float					NOT NULL,
	previousYPosition		float					NOT NULL,
	previousZPosition		float					NOT NULL,
	previousYRotation		float					NOT NULL,
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
	CONSTRAINT df_t_Hero__lastLocationId		DEFAULT(0)	FOR lastLocationId,
	CONSTRAINT df_t_Hero__lastXPosition			DEFAULT(0)	FOR lastXPosition,
	CONSTRAINT df_t_Hero__lastYPosition			DEFAULT(0)	FOR lastYPosition,
	CONSTRAINT df_t_Hero__lastZPosition			DEFAULT(0)	FOR lastZPosition,
	CONSTRAINT df_t_Hero__lastYRotation			DEFAULT(0)	FOR lastYRotation,
	CONSTRAINT df_t_Hero__previousContinentId	DEFAULT(0)	FOR previousContinentId,
	CONSTRAINT df_t_Hero__previousXPosition		DEFAULT(0)	FOR previousXPosition,
	CONSTRAINT df_t_Hero__previousYPosition		DEFAULT(0)	FOR previousYPosition,
	CONSTRAINT df_t_Hero__previousZPosition		DEFAULT(0)	FOR previousZPosition,
	CONSTRAINT df_t_Hero__previousYRotation		DEFAULT(0)	FOR previousYRotation
GO

--

--=================================================================
-- 테이블 이름		: 
-- 마지막 수정자	: 
--=================================================================
CREATE TABLE t_
(

	CONSTRAINT pk_ PRIMARY KEY NONCLUSTERED (

	) ON [INDEX]
) ON [TABLE]
GO

CREATE INDEX idx_t_ ON  () ON [INDEX]
GO