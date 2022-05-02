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

--