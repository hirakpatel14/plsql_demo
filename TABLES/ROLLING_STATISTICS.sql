--------------------------------------------------------
--  DDL for Table ROLLING$STATISTICS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ROLLING$STATISTICS" SHARING=METADATA 
   (	"STATID" NUMBER, 
	"RDBID" NUMBER, 
	"ATTRIBUTES" NUMBER, 
	"TYPE" NUMBER, 
	"NAME" VARCHAR2(256 BYTE), 
	"VALUESTR" VARCHAR2(256 BYTE), 
	"VALUENUM" NUMBER, 
	"VALUETS" TIMESTAMP (6), 
	"VALUEINT" INTERVAL DAY (3) TO SECOND (2), 
	"UPDATE_TIME" TIMESTAMP (6), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
