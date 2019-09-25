--------------------------------------------------------
--  Constraints for Table LOGMNRC_CONCOL_GG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_CONCOL_GG" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CONCOL_GG" MODIFY ("CON#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CONCOL_GG" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CONCOL_GG" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CONCOL_GG" ADD CONSTRAINT "LOGMNRC_CONCOL_GG_PK" PRIMARY KEY ("LOGMNR_UID", "CON#", "COMMIT_SCN", "INTCOL#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;