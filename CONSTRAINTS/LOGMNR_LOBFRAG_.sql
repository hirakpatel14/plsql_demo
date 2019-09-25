--------------------------------------------------------
--  Constraints for Table LOGMNR_LOBFRAG$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_LOBFRAG$" MODIFY ("FRAG#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_LOBFRAG$" ADD CONSTRAINT "LOGMNR_LOBFRAG$_PK" PRIMARY KEY ("LOGMNR_UID", "FRAGOBJ#") DISABLE;
