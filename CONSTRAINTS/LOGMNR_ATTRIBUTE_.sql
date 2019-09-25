--------------------------------------------------------
--  Constraints for Table LOGMNR_ATTRIBUTE$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_ATTRIBUTE$" MODIFY ("TOID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_ATTRIBUTE$" ADD CONSTRAINT "LOGMNR_ATTRIBUTE$_PK" PRIMARY KEY ("LOGMNR_UID", "TOID", "VERSION#", "ATTRIBUTE#") DISABLE;
