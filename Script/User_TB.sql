-- SYSTEM TABLE --

--=================================================================
-- ���̺� �̸�		: ���Ӽ���
-- ������ ������	: �̻���
--=================================================================
CREATE TABLE s_GameServer
(
	gameServerId			int					NOT NULL,
	connectionAddress		varchar(50)			NOT NULL,
	dbPath					varchar(100)		NOT NULL,
	heroNameRegex			nvarchar(50)		NOT NULL,

	CONSTRAINT pk_s_GameServer PRIMARY KEY NONCLUSTERED (
		gameServerId
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

-- TRANSACTION TABLE --

--=================================================================
-- ���̺� �̸�		: �����
-- ������ ������	: �̻���
--=================================================================
CREATE TABLE t_User
(
	userId						uniqueidentifier		NOT NULL,
	accessSecret				varchar(100)			NOT NULL,
	lastJoinedServer			int						NOT NULL,
	lastjoinedIPAddress			varchar(50)					NULL,
	regTime						datetimeoffset			NOT NULL,

	CONSTRAINT pk_t_User PRIMARY KEY NONCLUSTERED (
		userId
	) ON [INDEX]
) ON [TABLE]
GO

ALTER TABLE t_User ADD
	CONSTRAINT df_t_User__lastJoinedServer	DEFAULT(0)						FOR lastJoinedServer,
	CONSTRAINT df_t_User__regTime			DEFAULT(SYSDATETIMEOFFSET())	FOR regTime
GO

--=================================================================
-- ���̺� �̸�		: �Խ�Ʈ�����
-- ������ ������	: �̻���
--=================================================================
CREATE TABLE t_GuestUser
(
	guestId			uniqueidentifier		NOT NULL,
	userId			uniqueidentifier		NOT NULL

	CONSTRAINT pk_t_GuestUser PRIMARY KEY NONCLUSTERED (
		guestId
	) ON [INDEX]
) ON [TABLE]
GO

--=================================================================
-- ���̺� �̸�		: ����ڿ���
-- ������ ������	: �̻���
--=================================================================
CREATE TABLE t_UserHero
(
	userId				uniqueidentifier		NOT NULL,
	heroId				uniqueidentifier		NOT NULL,
	name				nvarchar(50)			NOT NULL,
	characterId			int						NOT NULL,

	CONSTRAINT pk_t_UserHero PRIMARY KEY NONCLUSTERED (
		userId, heroId
	) ON [INDEX]
) ON [TABLE]
GO

--=================================================================
-- ���̺� �̸�		: �����̸�
-- ������ ������	: �̻���
--=================================================================
CREATE TABLE t_HeroName
(
	name			nvarchar(50)			NOT NULL,
	heroId			uniqueidentifier		NOT NULL,

	CONSTRAINT pk_t_HeroName PRIMARY KEY NONCLUSTERED (
		name
	) ON [INDEX]
) ON [TABLE]
GO

-- REOURCE TABLE --

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
	startYRotation				float		NOT NULL,
	sectorCellSize				float		NOT NULL,
	heroCreationLimitCount		int			NOT NULL

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
-- ���̺� �̸�		: ��ġ
-- ������ ������	: �̻���
--=================================================================
CREATE TABLE r_Location
(
	locationId		int			NOT NULL,

	CONSTRAINT pk_r_Location PRIMARY KEY NONCLUSTERED (
		locationId
	) ON [INDEX]
) ON [TABLE]
GO

--=================================================================
-- ���̺� �̸�		: ���
-- ������ ������	: �̻���
--=================================================================
CREATE TABLE r_Continent
(
	continentId			int				NOT NULL,
	sceneName			varchar(50)		NOT NULL,
	locationId			int				NOT NULL,
	x					float			NOT NULL,
	y					float			NOT NULL,
	z					float			NOT NULL,
	xSize				float			NOT NULL,
	ySize				float			NOT NULL,
	zSize				float			NOT NULL,

	CONSTRAINT pk_r_Continent PRIMARY KEY NONCLUSTERED (
		continentId
	) ON [INDEX]
) ON [TABLE]
GO

--=================================================================
-- ���̺� �̸�		: ĳ�����ൿ
-- ������ ������	: �̻���
--=================================================================
CREATE TABLE r_CharacterAction
(
	characterId			int			NOT NULL,
	actionId			int			NOT NULL,

	CONSTRAINT pk_ PRIMARY KEY NONCLUSTERED (
		characterId, actionId
	) ON [INDEX]
) ON [TABLE]
GO

--

--=================================================================
-- ���̺� �̸�		: 
-- ������ ������	: 
--=================================================================
CREATE TABLE r_
(

	CONSTRAINT pk_ PRIMARY KEY NONCLUSTERED (

	) ON [INDEX]
) ON [TABLE]
GO