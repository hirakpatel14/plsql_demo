--------------------------------------------------------
--  Constraints for Table LOGMNR_TS$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_TS$" MODIFY ("BLOCKSIZE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_TS$" ADD CONSTRAINT "LOGMNR_TS$_PK" PRIMARY KEY ("LOGMNR_UID", "TS#") DISABLE;
