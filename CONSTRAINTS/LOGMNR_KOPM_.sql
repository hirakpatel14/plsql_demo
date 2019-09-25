--------------------------------------------------------
--  Constraints for Table LOGMNR_KOPM$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_KOPM$" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_KOPM$" ADD CONSTRAINT "LOGMNR_KOPM$_PK" PRIMARY KEY ("LOGMNR_UID", "NAME") DISABLE;
