--=================================================================
-- 테이블 이름		: 캐릭터행동
-- 마지막 수정자	: 이상현
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