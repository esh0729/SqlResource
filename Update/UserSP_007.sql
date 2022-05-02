--=================================================================
-- 프로시저 이름	: 캐릭터행동 목록
-- 마지막 수정자	: 이상현
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