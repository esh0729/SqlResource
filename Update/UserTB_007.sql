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