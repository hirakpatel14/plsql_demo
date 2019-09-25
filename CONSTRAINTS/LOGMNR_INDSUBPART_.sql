--------------------------------------------------------
--  Constraints for Table LOGMNR_INDSUBPART$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_INDSUBPART$" MODIFY ("TS#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_INDSUBPART$" ADD CONSTRAINT "LOGMNR_INDSUBPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "POBJ#") DISABLE;
