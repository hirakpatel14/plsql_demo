--------------------------------------------------------
--  Constraints for Table LOGMNR_IND$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_IND$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_IND$" ADD CONSTRAINT "LOGMNR_IND$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
