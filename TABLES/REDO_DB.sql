--------------------------------------------------------
--  DDL for Table REDO_DB
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."REDO_DB" SHARING=METADATA 
   (	"DBID" NUMBER, 
	"GLOBAL_DBNAME" VARCHAR2(129 BYTE), 
	"DBUNAME" VARCHAR2(32 BYTE), 
	"VERSION" VARCHAR2(32 BYTE), 
	"THREAD#" NUMBER, 
	"RESETLOGS_SCN_BAS" NUMBER, 
	"RESETLOGS_SCN_WRP" NUMBER, 
	"RESETLOGS_TIME" NUMBER, 
	"PRESETLOGS_SCN_BAS" NUMBER, 
	"PRESETLOGS_SCN_WRP" NUMBER, 
	"PRESETLOGS_TIME" NUMBER, 
	"SEQNO_RCV_CUR" NUMBER, 
	"SEQNO_RCV_LO" NUMBER, 
	"SEQNO_RCV_HI" NUMBER, 
	"SEQNO_DONE_CUR" NUMBER, 
	"SEQNO_DONE_LO" NUMBER, 
	"SEQNO_DONE_HI" NUMBER, 
	"GAP_SEQNO" NUMBER, 
	"GAP_RET" NUMBER, 
	"GAP_DONE" NUMBER, 
	"APPLY_SEQNO" NUMBER, 
	"APPLY_DONE" NUMBER, 
	"PURGE_DONE" NUMBER, 
	"HAS_CHILD" NUMBER, 
	"ERROR1" NUMBER, 
	"STATUS" NUMBER, 
	"CREATE_DATE" DATE, 
	"TS1" NUMBER, 
	"TS2" NUMBER, 
	"GAP_NEXT_SCN" NUMBER, 
	"GAP_NEXT_TIME" NUMBER, 
	"CURSCN_TIME" NUMBER, 
	"RESETLOGS_SCN" NUMBER, 
	"PRESETLOGS_SCN" NUMBER, 
	"GAP_RET2" NUMBER, 
	"CURLOG" NUMBER, 
	"ENDIAN" NUMBER, 
	"ENQIDX" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" DATE, 
	"SPARE6" VARCHAR2(65 BYTE), 
	"SPARE7" VARCHAR2(129 BYTE), 
	"TS3" NUMBER, 
	"CURBLKNO" NUMBER, 
	"SPARE8" NUMBER, 
	"SPARE9" NUMBER, 
	"SPARE10" NUMBER, 
	"SPARE11" NUMBER, 
	"SPARE12" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;