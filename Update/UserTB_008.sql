ALTER TABLE r_Continent ADD
	locationId		int			NOT NULL CONSTRAINT df_tmp01 DEFAULT(0)
GO
ALTER TABLE r_Continent DROP CONSTRAINT
	df_tmp01
GO

--=================================================================
-- 테이블 이름		: 위치
-- 마지막 수정자	: 이상현
--=================================================================
CREATE TABLE r_Location
(
	locationId		int			NOT NULL,

	CONSTRAINT pk_r_Location PRIMARY KEY NONCLUSTERED (
		locationId
	) ON [INDEX]
) ON [TABLE]
GO