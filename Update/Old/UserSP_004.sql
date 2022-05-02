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