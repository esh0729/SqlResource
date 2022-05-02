--=================================================================
-- ���̺� �̸�		: ���Ӽ���
-- ������ ������	: �̻���
--=================================================================
CREATE TABLE r_GameConfig
(
	startContinentId			int			NOT NULL,
	startXPosition				float		NOT NULL,
	startYPosition				float		NOT NULL,
	startZPosition				float		NOT NULL,
	startRadius					float		NOT NULL,
	startYRotationType			int			NOT NULL,
	startYRotation				float		NOT NULL
) ON [TABLE]
GO

--=================================================================
-- ���̺� �̸�		: ĳ����
-- ������ ������	: �̻���
--=================================================================
CREATE TABLE r_Character
(
	characterId			int			NOT NULL,
	moveSpeed			int			NOT NULL,

	CONSTRAINT pk_r_Character PRIMARY KEY NONCLUSTERED (
		characterId
	) ON [INDEX]
) ON [TABLE]
GO

--=================================================================
-- ���̺� �̸�		: ���
-- ������ ������	: �̻���
--=================================================================
CREATE TABLE r_Continent
(
	continentId			int			NOT NULL,
	x					float		NOT NULL,
	y					float		NOT NULL,
	z					float		NOT NULL,
	xSize				float		NOT NULL,
	ySize				float		NOT NULL,
	zSize				float		NOT NULL,

	CONSTRAINT pk_r_Continent PRIMARY KEY NONCLUSTERED (
		continentId
	) ON [INDEX]
) ON [TABLE]
GO

--=================================================================
-- ���̺� �̸�		: �ý��ۼ���
-- ������ ������	: �̻���
--=================================================================
CREATE TABLE s_SystemSetting
(
	metaDataVersion			int			NOT NULL
) ON [TABLE]
GO

--