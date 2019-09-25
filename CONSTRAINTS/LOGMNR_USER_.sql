--------------------------------------------------------
--  Constraints for Table LOGMNR_USER$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_USER$" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_USER$" ADD CONSTRAINT "LOGMNR_USER$_PK" PRIMARY KEY ("LOGMNR_UID", "USER#") DISABLE;
