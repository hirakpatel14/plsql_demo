--------------------------------------------------------
--  DDL for Table ROLLING$EVENTS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ROLLING$EVENTS" SHARING=METADATA 
   (	"EVENTID" NUMBER, 
	"INSTID" NUMBER, 
	"REVISION" NUMBER, 
	"EVENT_TIME" TIMESTAMP (6), 
	"TYPE" VARCHAR2(16 BYTE), 
	"STATUS" NUMBER, 
	"MESSAGE" VARCHAR2(256 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
