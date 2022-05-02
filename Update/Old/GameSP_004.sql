--=================================================================
-- 프로시저 이름	: 영웅수
-- 마지막 수정자	: 이상현
--=================================================================
CREATE PROCEDURE uspGSApi_HeroCount
	@accountId			uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON

	SELECT count(*) as heroCount
	  FROM t_Hero WITH(NOLOCK)
	 WHERE accountId = @accountId
END
GO