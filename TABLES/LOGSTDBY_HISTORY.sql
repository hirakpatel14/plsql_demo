--------------------------------------------------------
--  DDL for Table LOGSTDBY$HISTORY
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$HISTORY" SHARING=METADATA 
   (	"STREAM_SEQUENCE#" NUMBER, 
	"LMNR_SID" NUMBER, 
	"DBID" NUMBER, 
	"FIRST_CHANGE#" NUMBER, 
	"LAST_CHANGE#" NUMBER, 
	"SOURCE" NUMBER, 
	"STATUS" NUMBER, 
	"FIRST_TIME" DATE, 
	"LAST_TIME" DATE, 
	"DGNAME" VARCHAR2(255 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
