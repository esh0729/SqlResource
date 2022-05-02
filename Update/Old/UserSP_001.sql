--=================================================================
-- ���ν��� �̸�	: ����� ����(�α���)
-- ������ ������	: �̻���
--=================================================================
CREATE PROCEDURE uspGSApi_UpdateUser_Login
	@userId						uniqueidentifier,
	@nLastJoinedServer			int,
	@sLastJoinedIPAddress		varchar(50)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE t_User
	   SET lastJoinedServer		= @nLastJoinedServer,
		   lastJoinedIPAddress	= @sLastJoinedIPAddress
	 WHERE userId = @userId

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO