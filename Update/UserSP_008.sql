--=================================================================
-- ���ν��� �̸�	: ��ġ ���
-- ������ ������	: �̻���
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