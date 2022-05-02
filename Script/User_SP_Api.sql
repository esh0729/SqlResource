--=================================================================
-- ���ν��� �̸�	: ����� ���
-- ������ ������	: �̻���
--=================================================================
CREATE PROCEDURE uspApi_AddUser
	@userId				uniqueidentifier,
	@sAccessSecret		varchar(100)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_User (userId, accessSecret)
		VALUES (@userId, @sAccessSecret)

	IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
		RETURN 1

	RETURN 0
END
GO

--=================================================================
-- ���ν��� �̸�	: �Խ�Ʈ����� ���
-- ������ ������	: �̻���
--=================================================================
CREATE PROCEDURE uspApi_AddGuestUser
	@guestId		uniqueidentifier,
	@userId			uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_GuestUser (guestId, userId)
		VALUES (@guestId, @userId)

	IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
		RETURN 1

	RETURN 0
END
GO

--=================================================================
-- ���ν��� �̸�	: �Խ�Ʈ�����
-- ������ ������	: �̻���
--=================================================================
CREATE PROCEDURE uspApi_GuestUser
	@guestId		uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON

	SELECT a.guestId, b.*
	  FROM t_GuestUser a WITH(NOLOCK)
		   INNER JOIN t_User b WITH(NOLOCK)
				 ON b.userId = a.userId
	 WHERE a.guestId = @guestId
END
GO

--=================================================================
-- ���ν��� �̸�	: ���Ӽ��� ���
-- ������ ������	: �̻���
--=================================================================
CREATE PROCEDURE uspApi_GameServers
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM s_GameServer WITH(NOLOCK)
	 ORDER BY gameServerId ASC
END
GO

--=================================================================
-- ���ν��� �̸�	: ���Ӽ���
-- ������ ������	: �̻���
--=================================================================
CREATE PROCEDURE uspApi_GameConfig
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
CREATE PROCEDURE uspApi_Characters
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
CREATE PROCEDURE uspApi_Continents
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM r_Continent WITH(NOLOCK)
	 ORDER BY continentId ASC
END
GO

--=================================================================
-- ���ν��� �̸�	: �ý��ۼ���
-- ������ ������	: �̻���
--=================================================================
CREATE PROCEDURE uspApi_SystemSetting
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT *
	  FROM s_SystemSetting WITH(NOLOCK)
END
GO

--=================================================================
-- ���ν��� �̸�	: ĳ�����ൿ ���
-- ������ ������	: �̻���
--=================================================================
CREATE PROCEDURE uspApi_CharacterActions
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	  FROM r_CharacterAction WITH(NOLOCK)
	 ORDER BY characterId ASC, actionId ASC
END
GO

--

--=================================================================
-- ���ν��� �̸�	:
-- ������ ������	:
--=================================================================
CREATE PROCEDURE 
GO