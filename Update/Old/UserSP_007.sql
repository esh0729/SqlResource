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