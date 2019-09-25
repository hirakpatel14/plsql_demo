--------------------------------------------------------
--  Constraints for Table LOGMNR_SESSION_ACTIONS$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" MODIFY ("ACTIONNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" MODIFY ("LOGMNRSESSION#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" MODIFY ("PROCESSROLE#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" MODIFY ("ACTIONTYPE#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" ADD CONSTRAINT "LOGMNR_SESSION_ACTION$_PK" PRIMARY KEY ("LOGMNRSESSION#", "ACTIONNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;