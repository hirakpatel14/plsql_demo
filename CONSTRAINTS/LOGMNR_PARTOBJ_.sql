--------------------------------------------------------
--  Constraints for Table LOGMNR_PARTOBJ$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_PARTOBJ$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_PARTOBJ$" ADD CONSTRAINT "LOGMNR_PARTOBJ$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
