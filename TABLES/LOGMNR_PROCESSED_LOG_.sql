--------------------------------------------------------
--  DDL for Table LOGMNR_PROCESSED_LOG$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_PROCESSED_LOG$" SHARING=METADATA 
   (	"SESSION#" NUMBER, 
	"THREAD#" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"FIRST_CHANGE#" NUMBER, 
	"NEXT_CHANGE#" NUMBER, 
	"FIRST_TIME" DATE, 
	"NEXT_TIME" DATE, 
	"FILE_NAME" VARCHAR2(513 BYTE), 
	"STATUS" NUMBER, 
	"INFO" VARCHAR2(32 BYTE), 
	"TIMESTAMP" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;