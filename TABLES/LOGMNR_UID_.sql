--------------------------------------------------------
--  DDL for Table LOGMNR_UID$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_UID$" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_DID" NUMBER, 
	"LOGMNR_MDH" NUMBER, 
	"PDB_NAME" VARCHAR2(384 BYTE), 
	"PDB_ID" NUMBER, 
	"PDB_UID" NUMBER, 
	"START_SCN" NUMBER, 
	"END_SCN" NUMBER, 
	"FLAGS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE), 
	"SPARE4" TIMESTAMP (6)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
