--=================================================================
-- 프로시저 이름	: 게임설정
-- 마지막 수정자	: 이상현
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
-- 프로시저 이름	: 캐릭터 목록
-- 마지막 수정자	: 이상현
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
-- 프로시저 이름	: 대륙 목록
-- 마지막 수정자	: 이상현
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
-- 프로시저 이름	: 시스템설정
-- 마지막 수정자	: 이상현
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

--