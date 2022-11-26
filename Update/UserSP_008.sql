--=================================================================
-- 프로시저 이름	: 위치 목록
-- 마지막 수정자	: 이상현
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