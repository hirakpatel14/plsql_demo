--------------------------------------------------------
--  Constraints for Table LOGMNR_OBJ$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_OBJ$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_OBJ$" ADD CONSTRAINT "LOGMNR_OBJ$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
