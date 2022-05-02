ALTER TABLE r_GameConfig ADD
	sectorCellSize		float		NOT NULL CONSTRAINT df_tmp01 DEFAULT(0)
GO
ALTER TABLE r_GameConfig DROP CONSTRAINT
	df_tmp01
GO

ALTER TABLE r_Continent ADD
	sceneName varchar(50) NOT NULL CONSTRAINT df_tmp01 DEFAULT('')
GO
ALTER TABLE r_Continent DROP CONSTRAINT
	df_tmp01
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

--