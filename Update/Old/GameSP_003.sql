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

--