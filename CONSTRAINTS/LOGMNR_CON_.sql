--------------------------------------------------------
--  Constraints for Table LOGMNR_CON$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_CON$" MODIFY ("OWNER#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CON$" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CON$" MODIFY ("CON#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CON$" ADD CONSTRAINT "LOGMNR_CON$_PK" PRIMARY KEY ("LOGMNR_UID", "CON#") DISABLE;
