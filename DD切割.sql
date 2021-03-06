DECLARE @I INT
SET @I = 1996
WHILE @I <= 2003
BEGIN

EXEC(
'
SELECT
cast(SUBSTRING([資料行 0],1,6) AS nvarchar(15)) "FEE_YM",
cast(SUBSTRING([資料行 0],7,1) AS nvarchar(15)) "APPL_TYPE",
cast(SUBSTRING([資料行 0],8,34) AS nvarchar(50)) "HOSP_ID",
cast(SUBSTRING([資料行 0],42,8) AS nvarchar(15)) "APPL_DATE",
cast(SUBSTRING([資料行 0],50,1) AS nvarchar(15)) "CASE_TYPE",
cast(SUBSTRING([資料行 0],51,6) AS nvarchar(15)) "SEQ_NO",
cast(SUBSTRING([資料行 0],57,32) AS nvarchar(50)) "ID",
cast(SUBSTRING([資料行 0],89,8) AS nvarchar(15)) "ID_BIRTHDAY",
cast(SUBSTRING([資料行 0],97,1) AS nvarchar(15)) "GAVE_KIND",
cast(SUBSTRING([資料行 0],98,1) AS nvarchar(15)) "TRAC_EVEN",
cast(SUBSTRING([資料行 0],99,2) AS nvarchar(15)) "CARD_SEQ_NO",
cast(SUBSTRING([資料行 0],102,2) AS nvarchar(15)) "FUNC_TYPE",
cast(SUBSTRING([資料行 0],104,8) AS nvarchar(15)) "IN_DATE",
cast(SUBSTRING([資料行 0],112,8) AS nvarchar(15)) "OUT_DATE",
cast(SUBSTRING([資料行 0],120,8) AS nvarchar(15)) "APPL_BEG_DATE",
cast(SUBSTRING([資料行 0],128,8) AS nvarchar(15)) "APPL_END_DATE",
cast(SUBSTRING([資料行 0],136,3) AS int) "E_BED_DAY",
cast(SUBSTRING([資料行 0],139,3) AS int) "S_BED_DAY",
cast(SUBSTRING([資料行 0],142,32) AS nvarchar(50)) "PRSN_ID",
cast(SUBSTRING([資料行 0],174,5) AS nvarchar(15)) "DRG_CODE",
cast(SUBSTRING([資料行 0],179,5) AS nvarchar(15)) "EXT_CODE_1",
cast(SUBSTRING([資料行 0],184,5) AS nvarchar(15)) "EXT_CODE_2",
cast(SUBSTRING([資料行 0],189,1) AS nvarchar(15)) "TRAN_CODE",
cast(SUBSTRING([資料行 0],190,5) AS nvarchar(15)) "ICD9CM_CODE",
cast(SUBSTRING([資料行 0],195,5) AS nvarchar(15)) "ICD9CM_CODE_1",
cast(SUBSTRING([資料行 0],200,5) AS nvarchar(15)) "ICD9CM_CODE_2",
cast(SUBSTRING([資料行 0],205,5) AS nvarchar(15)) "ICD9CM_CODE_3",
cast(SUBSTRING([資料行 0],210,5) AS nvarchar(15)) "ICD9CM_CODE_4",
cast(SUBSTRING([資料行 0],215,4) AS nvarchar(15)) "ICD_OP_CODE",
cast(SUBSTRING([資料行 0],219,4) AS nvarchar(15)) "ICD_OP_CODE_1",
cast(SUBSTRING([資料行 0],223,4) AS nvarchar(15)) "ICD_OP_CODE_2",
cast(SUBSTRING([資料行 0],227,4) AS nvarchar(15)) "ICD_OP_CODE_3",
cast(SUBSTRING([資料行 0],231,4) AS nvarchar(15)) "ICD_OP_CODE_4",
cast(SUBSTRING([資料行 0],235,7) AS int) "DIAG_AMT",
cast(SUBSTRING([資料行 0],242,7) AS int) "ROOM_AMT",
cast(SUBSTRING([資料行 0],249,7) AS int) "MEAL_AMT",
cast(SUBSTRING([資料行 0],256,7) AS int) "AMIN_AMT",
cast(SUBSTRING([資料行 0],263,7) AS int) "RADO_AMT",
cast(SUBSTRING([資料行 0],270,7) AS int) "THRP_AMT",
cast(SUBSTRING([資料行 0],277,7) AS int) "SGRY_AMT",
cast(SUBSTRING([資料行 0],284,7) AS int) "PHSC_AMT",
cast(SUBSTRING([資料行 0],291,7) AS int) "BLOD_AMT",
cast(SUBSTRING([資料行 0],298,7) AS int) "HD_AMT",
cast(SUBSTRING([資料行 0],305,7) AS int) "ANE_AMT",
cast(SUBSTRING([資料行 0],312,7) AS int) "METR_AMT",
cast(SUBSTRING([資料行 0],319,7) AS int) "DRUG_AMT",
cast(SUBSTRING([資料行 0],326,7) AS int) "DSVC_AMT",
cast(SUBSTRING([資料行 0],333,7) AS int) "NRTP_AMT",
cast(SUBSTRING([資料行 0],340,7) AS int) "INJT_AMT",
cast(SUBSTRING([資料行 0],347,7) AS int) "BABY_AMT",
cast(SUBSTRING([資料行 0],354,7) AS int) "CHARG_AMT",
cast(SUBSTRING([資料行 0],361,8) AS int) "MED_AMT",
cast(SUBSTRING([資料行 0],369,7) AS int) "PART_AMT",
cast(SUBSTRING([資料行 0],376,8) AS int) "APPL_AMT",
cast(SUBSTRING([資料行 0],384,8) AS int) "EB_APPL30_AMT",
cast(SUBSTRING([資料行 0],392,7) AS int) "EB_PART30_AMT",
cast(SUBSTRING([資料行 0],399,8) AS int) "EB_APPL60_AMT",
cast(SUBSTRING([資料行 0],407,7) AS int) "EB_PART60_AMT",
cast(SUBSTRING([資料行 0],414,8) AS int) "EB_APPL61_AMT",
cast(SUBSTRING([資料行 0],422,7) AS int) "EB_PART61_AMT",
cast(SUBSTRING([資料行 0],429,8) AS int) "SB_APPL30_AMT",
cast(SUBSTRING([資料行 0],437,7) AS int) "SB_PART30_AMT",
cast(SUBSTRING([資料行 0],444,8) AS int) "SB_APPL90_AMT",
cast(SUBSTRING([資料行 0],452,7) AS int) "SB_PART90_AMT",
cast(SUBSTRING([資料行 0],459,8) AS int) "SB_APPL180_AMT",
cast(SUBSTRING([資料行 0],467,7) AS int) "SB_PART180_AMT",
cast(SUBSTRING([資料行 0],474,8) AS int) "SB_APPL181_AMT",
cast(SUBSTRING([資料行 0],482,7) AS int) "SB_PART181_AMT",
cast(SUBSTRING([資料行 0],489,3) AS nvarchar(15)) "PART_MARK",
cast(SUBSTRING([資料行 0],492,1) AS nvarchar(15)) "ID_SEX",
cast(SUBSTRING([資料行 0],369,7) AS int) + cast(SUBSTRING([資料行 0],376,8) AS int) "TOTAL_AMT"
INTO HIGH_AGE_DD.dbo.DD'+@I+'
FROM HIGH_AGE_DD.dbo.RRDD'+@I+'
')
SET @I=@I+1
END


DECLARE @J INT
SET @J = 2005
WHILE @J <= 2006
BEGIN

EXEC(
'
SELECT
cast(SUBSTRING([資料行 0],1,6) AS nvarchar(15)) "FEE_YM",
cast(SUBSTRING([資料行 0],7,1) AS nvarchar(15)) "APPL_TYPE",
cast(SUBSTRING([資料行 0],8,34) AS nvarchar(50)) "HOSP_ID",
cast(SUBSTRING([資料行 0],42,8) AS nvarchar(15)) "APPL_DATE",
cast(SUBSTRING([資料行 0],50,1) AS nvarchar(15)) "CASE_TYPE",
cast(SUBSTRING([資料行 0],51,6) AS nvarchar(15)) "SEQ_NO",
cast(SUBSTRING([資料行 0],57,32) AS nvarchar(50)) "ID",
cast(SUBSTRING([資料行 0],89,8) AS nvarchar(15)) "ID_BIRTHDAY",
cast(SUBSTRING([資料行 0],97,1) AS nvarchar(15)) "GAVE_KIND",
cast(SUBSTRING([資料行 0],98,1) AS nvarchar(15)) "TRAC_EVEN",
cast(SUBSTRING([資料行 0],99,4) AS nvarchar(15)) "CARD_SEQ_NO",
cast(SUBSTRING([資料行 0],103,2) AS nvarchar(15)) "FUNC_TYPE",
cast(SUBSTRING([資料行 0],105,8) AS nvarchar(15)) "IN_DATE",
cast(SUBSTRING([資料行 0],113,8) AS nvarchar(15)) "OUT_DATE",
cast(SUBSTRING([資料行 0],121,8) AS nvarchar(15)) "APPL_BEG_DATE",
cast(SUBSTRING([資料行 0],129,8) AS nvarchar(15)) "APPL_END_DATE",
cast(SUBSTRING([資料行 0],137,3) AS int) "E_BED_DAY",
cast(SUBSTRING([資料行 0],140,3) AS int) "S_BED_DAY",
cast(SUBSTRING([資料行 0],143,32) AS nvarchar(50)) "PRSN_ID",
cast(SUBSTRING([資料行 0],175,5) AS nvarchar(15)) "DRG_CODE",
cast(SUBSTRING([資料行 0],180,5) AS nvarchar(15)) "EXT_CODE_1",
cast(SUBSTRING([資料行 0],185,5) AS nvarchar(15)) "EXT_CODE_2",
cast(SUBSTRING([資料行 0],190,1) AS nvarchar(15)) "TRAN_CODE",
cast(SUBSTRING([資料行 0],191,5) AS nvarchar(15)) "ICD9CM_CODE",
cast(SUBSTRING([資料行 0],196,5) AS nvarchar(15)) "ICD9CM_CODE_1",
cast(SUBSTRING([資料行 0],201,5) AS nvarchar(15)) "ICD9CM_CODE_2",
cast(SUBSTRING([資料行 0],206,5) AS nvarchar(15)) "ICD9CM_CODE_3",
cast(SUBSTRING([資料行 0],211,5) AS nvarchar(15)) "ICD9CM_CODE_4",
cast(SUBSTRING([資料行 0],216,4) AS nvarchar(15)) "ICD_OP_CODE",
cast(SUBSTRING([資料行 0],220,4) AS nvarchar(15)) "ICD_OP_CODE_1",
cast(SUBSTRING([資料行 0],224,4) AS nvarchar(15)) "ICD_OP_CODE_2",
cast(SUBSTRING([資料行 0],228,4) AS nvarchar(15)) "ICD_OP_CODE_3",
cast(SUBSTRING([資料行 0],232,4) AS nvarchar(15)) "ICD_OP_CODE_4",
cast(SUBSTRING([資料行 0],236,7) AS int) "DIAG_AMT",
cast(SUBSTRING([資料行 0],243,7) AS int) "ROOM_AMT",
cast(SUBSTRING([資料行 0],250,7) AS int) "MEAL_AMT",
cast(SUBSTRING([資料行 0],257,7) AS int) "AMIN_AMT",
cast(SUBSTRING([資料行 0],264,7) AS int) "RADO_AMT",
cast(SUBSTRING([資料行 0],271,7) AS int) "THRP_AMT",
cast(SUBSTRING([資料行 0],278,7) AS int) "SGRY_AMT",
cast(SUBSTRING([資料行 0],285,7) AS int) "PHSC_AMT",
cast(SUBSTRING([資料行 0],292,7) AS int) "BLOD_AMT",
cast(SUBSTRING([資料行 0],299,7) AS int) "HD_AMT",
cast(SUBSTRING([資料行 0],306,7) AS int) "ANE_AMT",
cast(SUBSTRING([資料行 0],313,7) AS int) "METR_AMT",
cast(SUBSTRING([資料行 0],320,7) AS int) "DRUG_AMT",
cast(SUBSTRING([資料行 0],327,7) AS int) "DSVC_AMT",
cast(SUBSTRING([資料行 0],334,7) AS int) "NRTP_AMT",
cast(SUBSTRING([資料行 0],341,7) AS int) "INJT_AMT",
cast(SUBSTRING([資料行 0],348,7) AS int) "BABY_AMT",
cast(SUBSTRING([資料行 0],355,7) AS int) "CHARG_AMT",
cast(SUBSTRING([資料行 0],362,8) AS nvarchar(15)) "MED_AMT",
cast(SUBSTRING([資料行 0],370,7) AS int) "PART_AMT",
cast(SUBSTRING([資料行 0],377,8) AS int) "APPL_AMT",
cast(SUBSTRING([資料行 0],385,8) AS int) "EB_APPL30_AMT",
cast(SUBSTRING([資料行 0],393,7) AS int) "EB_PART30_AMT",
cast(SUBSTRING([資料行 0],400,8) AS int) "EB_APPL60_AMT",
cast(SUBSTRING([資料行 0],408,7) AS int) "EB_PART60_AMT",
cast(SUBSTRING([資料行 0],415,8) AS int) "EB_APPL61_AMT",
cast(SUBSTRING([資料行 0],423,7) AS int) "EB_PART61_AMT",
cast(SUBSTRING([資料行 0],430,8) AS int) "SB_APPL30_AMT",
cast(SUBSTRING([資料行 0],438,7) AS int) "SB_PART30_AMT",
cast(SUBSTRING([資料行 0],445,8) AS int) "SB_APPL90_AMT",
cast(SUBSTRING([資料行 0],453,7) AS int) "SB_PART90_AMT",
cast(SUBSTRING([資料行 0],460,8) AS int) "SB_APPL180_AMT",
cast(SUBSTRING([資料行 0],468,7) AS int) "SB_PART180_AMT",
cast(SUBSTRING([資料行 0],475,8) AS int) "SB_APPL181_AMT",
cast(SUBSTRING([資料行 0],483,7) AS int) "SB_PART181_AMT",
cast(SUBSTRING([資料行 0],490,3) AS nvarchar(15)) "PART_MARK",
cast(SUBSTRING([資料行 0],493,1) AS nvarchar(15)) "ID_SEX",
cast(SUBSTRING([資料行 0],370,7) AS int) + cast(SUBSTRING([資料行 0],377,8) AS int) "TOTAL_AMT"
INTO HIGH_AGE_DD.dbo.DD'+@J+'
FROM HIGH_AGE_DD.dbo.RRDD'+@J+'
')

SET @J=@J+1
END

DECLARE @K INT
SET @K = 2007
WHILE @K <= 2011
BEGIN

EXEC(
'
SELECT
cast(SUBSTRING([資料行 0],1,6) AS nvarchar(15)) "FEE_YM",
cast(SUBSTRING([資料行 0],7,1) AS nvarchar(15)) "APPL_TYPE",
cast(SUBSTRING([資料行 0],8,34) AS nvarchar(50)) "HOSP_ID",
cast(SUBSTRING([資料行 0],42,8) AS nvarchar(15)) "APPL_DATE",
cast(SUBSTRING([資料行 0],50,2) AS nvarchar(15)) "CASE_TYPE",
cast(SUBSTRING([資料行 0],52,6) AS nvarchar(15)) "SEQ_NO",
cast(SUBSTRING([資料行 0],58,32) AS nvarchar(50)) "ID",
cast(SUBSTRING([資料行 0],90,8) AS nvarchar(15)) "ID_BIRTHDAY",
cast(SUBSTRING([資料行 0],98,1) AS nvarchar(15)) "GAVE_KIND",
cast(SUBSTRING([資料行 0],99,1) AS nvarchar(15)) "TRAC_EVEN",
cast(SUBSTRING([資料行 0],100,4) AS nvarchar(15)) "CARD_SEQ_NO",
cast(SUBSTRING([資料行 0],104,2) AS nvarchar(15)) "FUNC_TYPE",
cast(SUBSTRING([資料行 0],106,8) AS nvarchar(15)) "IN_DATE",
cast(SUBSTRING([資料行 0],114,8) AS nvarchar(15)) "OUT_DATE",
cast(SUBSTRING([資料行 0],122,8) AS nvarchar(15)) "APPL_BEG_DATE",
cast(SUBSTRING([資料行 0],130,8) AS nvarchar(15)) "APPL_END_DATE",
cast(SUBSTRING([資料行 0],138,3) AS int) "E_BED_DAY",
cast(SUBSTRING([資料行 0],141,3) AS int) "S_BED_DAY",
cast(SUBSTRING([資料行 0],144,32) AS nvarchar(50)) "PRSN_ID",
cast(SUBSTRING([資料行 0],176,5) AS nvarchar(15)) "DRG_CODE",
cast(SUBSTRING([資料行 0],181,5) AS nvarchar(15)) "EXT_CODE_1",
cast(SUBSTRING([資料行 0],186,5) AS nvarchar(15)) "EXT_CODE_2",
cast(SUBSTRING([資料行 0],191,1) AS nvarchar(15)) "TRAN_CODE",
cast(SUBSTRING([資料行 0],192,5) AS nvarchar(15)) "ICD9CM_CODE",
cast(SUBSTRING([資料行 0],197,5) AS nvarchar(15)) "ICD9CM_CODE_1",
cast(SUBSTRING([資料行 0],202,5) AS nvarchar(15)) "ICD9CM_CODE_2",
cast(SUBSTRING([資料行 0],207,5) AS nvarchar(15)) "ICD9CM_CODE_3",
cast(SUBSTRING([資料行 0],212,5) AS nvarchar(15)) "ICD9CM_CODE_4",
cast(SUBSTRING([資料行 0],217,4) AS nvarchar(15)) "ICD_OP_CODE",
cast(SUBSTRING([資料行 0],221,4) AS nvarchar(15)) "ICD_OP_CODE_1",
cast(SUBSTRING([資料行 0],225,4) AS nvarchar(15)) "ICD_OP_CODE_2",
cast(SUBSTRING([資料行 0],229,4) AS nvarchar(15)) "ICD_OP_CODE_3",
cast(SUBSTRING([資料行 0],233,4) AS nvarchar(15)) "ICD_OP_CODE_4",
cast(SUBSTRING([資料行 0],237,7) AS int) "DIAG_AMT",
cast(SUBSTRING([資料行 0],244,7) AS int) "ROOM_AMT",
cast(SUBSTRING([資料行 0],251,7) AS int) "MEAL_AMT",
cast(SUBSTRING([資料行 0],258,7) AS int) "AMIN_AMT",
cast(SUBSTRING([資料行 0],265,7) AS int) "RADO_AMT",
cast(SUBSTRING([資料行 0],272,7) AS int) "THRP_AMT",
cast(SUBSTRING([資料行 0],279,7) AS int) "SGRY_AMT",
cast(SUBSTRING([資料行 0],286,7) AS int) "PHSC_AMT",
cast(SUBSTRING([資料行 0],293,7) AS int) "BLOD_AMT",
cast(SUBSTRING([資料行 0],300,7) AS int) "HD_AMT",
cast(SUBSTRING([資料行 0],307,7) AS int) "ANE_AMT",
cast(SUBSTRING([資料行 0],314,7) AS int) "METR_AMT",
cast(SUBSTRING([資料行 0],321,7) AS int) "DRUG_AMT",
cast(SUBSTRING([資料行 0],328,7) AS int) "DSVC_AMT",
cast(SUBSTRING([資料行 0],335,7) AS int) "NRTP_AMT",
cast(SUBSTRING([資料行 0],342,7) AS int) "INJT_AMT",
cast(SUBSTRING([資料行 0],349,7) AS int) "BABY_AMT",
cast(SUBSTRING([資料行 0],356,7) AS int) "CHARG_AMT",
cast(SUBSTRING([資料行 0],363,8) AS int) "MED_AMT",
cast(SUBSTRING([資料行 0],371,7) AS int) "PART_AMT",
cast(SUBSTRING([資料行 0],378,8) AS int) "APPL_AMT",
cast(SUBSTRING([資料行 0],386,8) AS int) "EB_APPL30_AMT",
cast(SUBSTRING([資料行 0],394,7) AS int) "EB_PART30_AMT",
cast(SUBSTRING([資料行 0],401,8) AS int) "EB_APPL60_AMT",
cast(SUBSTRING([資料行 0],409,7) AS int) "EB_PART60_AMT",
cast(SUBSTRING([資料行 0],416,8) AS int) "EB_APPL61_AMT",
cast(SUBSTRING([資料行 0],424,7) AS int) "EB_PART61_AMT",
cast(SUBSTRING([資料行 0],431,8) AS int) "SB_APPL30_AMT",
cast(SUBSTRING([資料行 0],439,7) AS int) "SB_PART30_AMT",
cast(SUBSTRING([資料行 0],446,8) AS int) "SB_APPL90_AMT",
cast(SUBSTRING([資料行 0],454,7) AS int) "SB_PART90_AMT",
cast(SUBSTRING([資料行 0],461,8) AS int) "SB_APPL180_AMT",
cast(SUBSTRING([資料行 0],469,7) AS int) "SB_PART180_AMT",
cast(SUBSTRING([資料行 0],476,8) AS int) "SB_APPL181_AMT",
cast(SUBSTRING([資料行 0],484,7) AS int) "SB_PART181_AMT",
cast(SUBSTRING([資料行 0],491,3) AS nvarchar(15)) "PART_MARK",
cast(SUBSTRING([資料行 0],494,1) AS nvarchar(15)) "ID_SEX",
cast(SUBSTRING([資料行 0],371,7) AS int) + cast(SUBSTRING([資料行 0],378,8) AS int) "TOTAL_AMT"
INTO HIGH_AGE_DD.dbo.DD'+@K+'
FROM HIGH_AGE_DD.dbo.RRDD'+@K+'
')
SET @K=@K+1
END

DECLARE @L INT
SET @L = 2012
WHILE @L <= 2013
BEGIN

EXEC(
'
SELECT
cast(SUBSTRING([資料行 0],1,6) AS nvarchar(15)) "FEE_YM",
cast(SUBSTRING([資料行 0],7,1) AS nvarchar(15)) "APPL_TYPE",
cast(SUBSTRING([資料行 0],8,34) AS nvarchar(50)) "HOSP_ID",
cast(SUBSTRING([資料行 0],42,8) AS nvarchar(15)) "APPL_DATE",
cast(SUBSTRING([資料行 0],50,2) AS nvarchar(15)) "CASE_TYPE",
cast(SUBSTRING([資料行 0],52,6) AS nvarchar(15)) "SEQ_NO",
cast(SUBSTRING([資料行 0],58,32) AS nvarchar(50)) "ID",
cast(SUBSTRING([資料行 0],90,8) AS nvarchar(15)) "ID_BIRTHDAY",
cast(SUBSTRING([資料行 0],98,1) AS nvarchar(15)) "GAVE_KIND",
cast(SUBSTRING([資料行 0],99,1) AS nvarchar(15)) "TRAC_EVEN",
cast(SUBSTRING([資料行 0],100,4) AS nvarchar(15)) "CARD_SEQ_NO",
cast(SUBSTRING([資料行 0],104,2) AS nvarchar(15)) "FUNC_TYPE",
cast(SUBSTRING([資料行 0],106,8) AS nvarchar(15)) "IN_DATE",
cast(SUBSTRING([資料行 0],114,8) AS nvarchar(15)) "OUT_DATE",
cast(SUBSTRING([資料行 0],122,8) AS nvarchar(15)) "APPL_BEG_DATE",
cast(SUBSTRING([資料行 0],130,8) AS nvarchar(15)) "APPL_END_DATE",
cast(SUBSTRING([資料行 0],138,3) AS int) "E_BED_DAY",
cast(SUBSTRING([資料行 0],141,3) AS int) "S_BED_DAY",
cast(SUBSTRING([資料行 0],144,32) AS nvarchar(50)) "PRSN_ID",
cast(SUBSTRING([資料行 0],176,5) AS nvarchar(15)) "DRG_CODE",
cast(SUBSTRING([資料行 0],181,15) AS nvarchar(15)) "EXT_CODE_1",
cast(SUBSTRING([資料行 0],196,15) AS nvarchar(15)) "EXT_CODE_2",
cast(SUBSTRING([資料行 0],211,1) AS nvarchar(15)) "TRAN_CODE",
cast(SUBSTRING([資料行 0],212,15) AS nvarchar(15)) "ICD9CM_CODE",
cast(SUBSTRING([資料行 0],227,15) AS nvarchar(15)) "ICD9CM_CODE_1",
cast(SUBSTRING([資料行 0],242,15) AS nvarchar(15)) "ICD9CM_CODE_2",
cast(SUBSTRING([資料行 0],257,15) AS nvarchar(15)) "ICD9CM_CODE_3",
cast(SUBSTRING([資料行 0],272,15) AS nvarchar(15)) "ICD9CM_CODE_4",
cast(SUBSTRING([資料行 0],287,15) AS nvarchar(15)) "ICD_OP_CODE",
cast(SUBSTRING([資料行 0],302,15) AS nvarchar(15)) "ICD_OP_CODE_1",
cast(SUBSTRING([資料行 0],317,15) AS nvarchar(15)) "ICD_OP_CODE_2",
cast(SUBSTRING([資料行 0],332,15) AS nvarchar(15)) "ICD_OP_CODE_3",
cast(SUBSTRING([資料行 0],347,15) AS nvarchar(15)) "ICD_OP_CODE_4",
cast(SUBSTRING([資料行 0],362,7) AS int) "DIAG_AMT",
cast(SUBSTRING([資料行 0],369,7) AS int) "ROOM_AMT",
cast(SUBSTRING([資料行 0],376,7) AS int) "MEAL_AMT",
cast(SUBSTRING([資料行 0],383,7) AS int) "AMIN_AMT",
cast(SUBSTRING([資料行 0],390,7) AS int) "RADO_AMT",
cast(SUBSTRING([資料行 0],397,7) AS int) "THRP_AMT",
cast(SUBSTRING([資料行 0],404,7) AS int) "SGRY_AMT",
cast(SUBSTRING([資料行 0],411,7) AS int) "PHSC_AMT",
cast(SUBSTRING([資料行 0],418,7) AS int) "BLOD_AMT",
cast(SUBSTRING([資料行 0],425,7) AS int) "HD_AMT",
cast(SUBSTRING([資料行 0],432,7) AS int) "ANE_AMT",
cast(SUBSTRING([資料行 0],439,7) AS int) "METR_AMT",
cast(SUBSTRING([資料行 0],446,7) AS int) "DRUG_AMT",
cast(SUBSTRING([資料行 0],453,7) AS int) "DSVC_AMT",
cast(SUBSTRING([資料行 0],460,7) AS int) "NRTP_AMT",
cast(SUBSTRING([資料行 0],467,7) AS int) "INJT_AMT",
cast(SUBSTRING([資料行 0],474,7) AS int) "BABY_AMT",
cast(SUBSTRING([資料行 0],481,7) AS int) "CHARG_AMT",
cast(SUBSTRING([資料行 0],488,8) AS int) "MED_AMT",
cast(SUBSTRING([資料行 0],496,7) AS int) "PART_AMT",
cast(SUBSTRING([資料行 0],503,8) AS int) "APPL_AMT",
cast(SUBSTRING([資料行 0],511,8) AS int) "EB_APPL30_AMT",
cast(SUBSTRING([資料行 0],519,7) AS int) "EB_PART30_AMT",
cast(SUBSTRING([資料行 0],526,8) AS int) "EB_APPL60_AMT",
cast(SUBSTRING([資料行 0],534,7) AS int) "EB_PART60_AMT",
cast(SUBSTRING([資料行 0],541,8) AS int) "EB_APPL61_AMT",
cast(SUBSTRING([資料行 0],549,7) AS int) "EB_PART61_AMT",
cast(SUBSTRING([資料行 0],556,8) AS int) "SB_APPL30_AMT",
cast(SUBSTRING([資料行 0],564,7) AS int) "SB_PART30_AMT",
cast(SUBSTRING([資料行 0],571,8) AS int) "SB_APPL90_AMT",
cast(SUBSTRING([資料行 0],579,7) AS int) "SB_PART90_AMT",
cast(SUBSTRING([資料行 0],586,8) AS int) "SB_APPL180_AMT",
cast(SUBSTRING([資料行 0],594,7) AS int) "SB_PART180_AMT",
cast(SUBSTRING([資料行 0],601,8) AS int) "SB_APPL181_AMT",
cast(SUBSTRING([資料行 0],609,7) AS int) "SB_PART181_AMT",
cast(SUBSTRING([資料行 0],616,3) AS nvarchar(15)) "PART_MARK",
cast(SUBSTRING([資料行 0],619,1) AS nvarchar(15)) "ID_SEX",
cast(SUBSTRING([資料行 0],620,5) AS nvarchar(15)) "EXM_RESULT_DRG_1",
cast(SUBSTRING([資料行 0],625,2) AS nvarchar(15)) "EXM_RESULT_MDC_1",
cast(SUBSTRING([資料行 0],627,5) AS nvarchar(15)) "TW_DRGS",
cast(SUBSTRING([資料行 0],632,1) AS nvarchar(15)) "APPL_CAUSE_MARK",
cast(SUBSTRING([資料行 0],633,1) AS nvarchar(15)) "TW_DRGS_SUIT_MARK",
cast(SUBSTRING([資料行 0],496,7) AS int) + cast(SUBSTRING([資料行 0],503,8) AS int) "TOTAL_AMT"
INTO HIGH_AGE_DD.dbo.DD'+@L+'
FROM HIGH_AGE_DD.dbo.RRDD'+@L+'
')

SET @L=@L+1
END