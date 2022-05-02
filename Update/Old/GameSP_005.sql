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