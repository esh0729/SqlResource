--=================================================================
-- 프로시저 이름	: 사용자
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_User
	@userId			uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM t_User WITH(NOLOCK)
	 WHERE userId = @userId
END
GO

--=================================================================
-- 프로시저 이름	: 게임서버 목록
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_GameServers
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM s_GameServer WITH(NOLOCK)
	 ORDER BY gameServerId ASC
END
GO

--=================================================================
-- 프로시저 이름	: 사용자 수정(로그인)
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_UpdateUser_Login
	@userId						uniqueidentifier,
	@nLastJoinedServer			int,
	@sLastJoinedIPAddress		varchar(50)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE t_User
	   SET lastJoinedServer		= @nLastJoinedServer,
		   lastJoinedIPAddress	= @sLastJoinedIPAddress
	 WHERE userId = @userId

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO

--=================================================================
-- 프로시저 이름	: 게임설정
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_GameConfig
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM r_GameConfig WITH(NOLOCK)
END
GO

--=================================================================
-- 프로시저 이름	: 캐릭터 목록
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_Characters
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM r_Character WITH(NOLOCK)
	 ORDER BY characterId ASC
END
GO

--=================================================================
-- 프로시저 이름	: 대륙 목록
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_Continents
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM r_Continent WITH(NOLOCK)
	 ORDER BY continentId ASC
END
GO

--=================================================================
-- 프로시저 이름	: 사용자영웅 등록
-- 마지막 수정자	: 이상현
--=================================================================
ALTER PROCEDURE uspGSApi_AddUserHero
	@userId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@sName				nvarchar(50),
	@nCharacterId		int
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_UserHero (
			userId,
			heroId,
			name,
			characterId)
		VALUES (
			@userId,
			@heroId,
			@sName,
			@nCharacterId)

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO

--=================================================================
-- 프로시저 이름	: 영웅이름 등록
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_AddHeroName
	@sName			nvarchar(50),
	@heroId			uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroName (name, heroId)
		VALUES (@sName, @heroId)

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO

--=================================================================
-- 프로시저 이름	: 영웅이름
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_HeroName
	@sName		nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM t_UserHero WITH(XLOCK)
	 WHERE name = @sName
END
GO

--=================================================================
-- 프로시저 이름	: 캐릭터행동 목록
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_CharacterActions
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM r_CharacterAction WITH(NOLOCK)
	 ORDER BY characterId ASC, actionId ASC
END
GO

--=================================================================
-- 프로시저 이름	: 위치 목록
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_Locations
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM r_Location WITH(NOLOCK)
	 ORDER BY locationId ASC
END
GO

--

--=================================================================
-- 프로시저 이름	:
-- 마지막 수정자	:
--=================================================================
CREATE PROCEDURE 
GO