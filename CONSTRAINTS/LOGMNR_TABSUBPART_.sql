--------------------------------------------------------
--  Constraints for Table LOGMNR_TABSUBPART$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_TABSUBPART$" MODIFY ("TS#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_TABSUBPART$" ADD CONSTRAINT "LOGMNR_TABSUBPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "POBJ#") DISABLE;
