--------------------------------------------------------
--  Constraints for Table LOGMNR_TABPART$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_TABPART$" MODIFY ("BO#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_TABPART$" ADD CONSTRAINT "LOGMNR_TABPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "BO#") DISABLE;
