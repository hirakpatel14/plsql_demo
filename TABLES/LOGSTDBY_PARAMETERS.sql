--------------------------------------------------------
--  DDL for Table LOGSTDBY$PARAMETERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$PARAMETERS" SHARING=METADATA 
   (	"NAME" VARCHAR2(30 BYTE), 
	"VALUE" VARCHAR2(2000 BYTE), 
	"TYPE" NUMBER, 
	"SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;