--------------------------------------------------------
--  Constraints for Table LOGMNR_ENC$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_ENC$" MODIFY ("MKEYID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_ENC$" ADD CONSTRAINT "LOGMNR_ENC$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "OWNER#") DISABLE;
