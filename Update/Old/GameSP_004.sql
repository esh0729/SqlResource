--=================================================================
-- ���ν��� �̸�	: ������
-- ������ ������	: �̻���
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