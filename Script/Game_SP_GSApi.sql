--=================================================================
-- 프로시저 이름	: 계정 등록
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_AddAccount
	@accountId		uniqueidentifier,
	@userId			uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_Account (accountId, userId, regTime)
		VALUES (@accountId, @userId, @regTime)

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO

--=================================================================
-- 프로시저 이름	: 계정
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_Account
	@userId		uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM t_Account WITH(NOLOCK)
	 WHERE userId = @userId
END
GO

--=================================================================
-- 프로시저 이름	: 영웅 등록
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_AddHero
	@accountId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@sName				nvarchar(50),
	@nCharacterId		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_Hero (
			accountId,
			heroId,
			name,
			characterId,
			regTime)
		VALUES (
			@accountId,
			@heroId,
			@sName,
			@nCharacterId,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO

--=================================================================
-- 프로시저 이름	: 영웅 목록
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_Heroes
	@accountId		uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM t_Hero WITH(NOLOCK)
	 where accountId = @accountId
	 ORDER BY regTime ASC
END
GO

--=================================================================
-- 프로시저 이름	: 영웅수
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_HeroCount
	@accountId			uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON

	SELECT count(*) as heroCount
	  FROM t_Hero WITH(NOLOCK)
	 WHERE accountId = @accountId
END
GO

--=================================================================
-- 프로시저 이름	: 영웅
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_Hero
	@heroId			uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM t_Hero WITH(NOLOCK)
	 WHERE heroId = @heroId
END
GO

--=================================================================
-- 프로시저 이름	: 영웅 로그인
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_HeroLogin
	@heroId				uniqueidentifier,
	@lastLoginTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	UPDATE t_Hero
	   SET lastLoginTime = @lastLoginTime
	 WHERE heroId = @heroId

	IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
		RETURN 1

	RETURN 0
END
GO

--=================================================================
-- 프로시저 이름	: 영웅 로그아웃
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_HeroLogout
	@heroId						uniqueidentifier,
	@lastLogoutTime				datetimeoffset,
	@nLastContinentId			int,
	@fLastXPosition				float,
	@fLastYPosition				float,
	@fLastZPosition				float,
	@fLastYRotation				float,
	@nPreviousContinentId		int,
	@fPreviousXPosition			float,
	@fPreviousYPosition			float,
	@fPreviousZPosition			float,
	@fPreviousYRotation			float
AS
BEGIN
	SET NOCOUNT ON

	UPDATE t_Hero
	   SET lastLogoutTime = @lastLogoutTime,
		   lastContinentId = @nLastContinentId,
		   lastXPosition = @fLastXPosition,
		   lastYPosition = @fLastYPosition,
		   lastZPosition = @fLastZPosition,
		   lastYRotation = @fLastYRotation,
		   previousContinentId = @nPreviousContinentId,
		   previousXPosition = @fPreviousXPosition,
		   previousYPosition = @fPreviousYPosition,
		   previousZPosition = @fPreviousZPosition,
		   previousYRotation = @fPreviousYRotation
	WHERE heroId = @heroId

	IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
		RETURN 1

	RETURN 0
END
GO

--

--=================================================================
-- 프로시저 이름	:
-- 마지막 수정자	:
--=================================================================
CREATE PROCEDURE 
GO