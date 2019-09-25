--------------------------------------------------------
--  Constraints for Table LOGMNR_TAB$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_TAB$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_TAB$" ADD CONSTRAINT "LOGMNR_TAB$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
