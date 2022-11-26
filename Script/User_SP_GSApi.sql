--=================================================================
-- ���ν��� �̸�	: �����
-- ������ ������	: �̻���
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
-- ���ν��� �̸�	: ���Ӽ��� ���
-- ������ ������	: �̻���
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
-- ���ν��� �̸�	: ����� ����(�α���)
-- ������ ������	: �̻���
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
-- ���ν��� �̸�	: ���Ӽ���
-- ������ ������	: �̻���
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
-- ���ν��� �̸�	: ĳ���� ���
-- ������ ������	: �̻���
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
-- ���ν��� �̸�	: ��� ���
-- ������ ������	: �̻���
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
-- ���ν��� �̸�	: ����ڿ��� ���
-- ������ ������	: �̻���
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
-- ���ν��� �̸�	: �����̸� ���
-- ������ ������	: �̻���
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
-- ���ν��� �̸�	: �����̸�
-- ������ ������	: �̻���
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
-- ���ν��� �̸�	: ĳ�����ൿ ���
-- ������ ������	: �̻���
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
-- ���ν��� �̸�	: ��ġ ���
-- ������ ������	: �̻���
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
-- ���ν��� �̸�	:
-- ������ ������	:
--=================================================================
CREATE PROCEDURE 
GO