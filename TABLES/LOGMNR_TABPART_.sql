--------------------------------------------------------
--  DDL for Table LOGMNR_TABPART$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_TABPART$" SHARING=METADATA 
   (	"OBJ#" NUMBER(22,0), 
	"TS#" NUMBER(22,0), 
	"PART#" NUMBER, 
	"BO#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
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