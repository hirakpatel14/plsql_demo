--------------------------------------------------------
--  Constraints for Table LOGMNR_TYPE$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_TYPE$" MODIFY ("TOID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_TYPE$" ADD CONSTRAINT "LOGMNR_TYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "TOID", "VERSION#") DISABLE;
