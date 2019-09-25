--------------------------------------------------------
--  DDL for Table LOGMNRC_IND_GG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_IND_GG" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"NAME" VARCHAR2(384 BYTE), 
	"COMMIT_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"FLAGS" NUMBER, 
	"OWNER#" NUMBER, 
	"OWNERNAME" VARCHAR2(384 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" VARCHAR2(4000 BYTE), 
	"SPARE5" VARCHAR2(4000 BYTE), 
	"SPARE6" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
