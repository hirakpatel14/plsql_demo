--------------------------------------------------------
--  DDL for Index LOGMNR_I1CON$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1CON$" ON "SYSTEM"."LOGMNR_CON$" ("LOGMNR_UID", "CON#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;