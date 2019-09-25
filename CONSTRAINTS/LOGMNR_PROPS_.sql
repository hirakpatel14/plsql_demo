--------------------------------------------------------
--  Constraints for Table LOGMNR_PROPS$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_PROPS$" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_PROPS$" ADD CONSTRAINT "LOGMNR_PROPS$_PK" PRIMARY KEY ("LOGMNR_UID", "NAME") DISABLE;
