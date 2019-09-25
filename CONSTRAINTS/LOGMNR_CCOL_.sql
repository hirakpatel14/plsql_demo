--------------------------------------------------------
--  Constraints for Table LOGMNR_CCOL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_CCOL$" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CCOL$" ADD CONSTRAINT "LOGMNR_CCOL$_PK" PRIMARY KEY ("LOGMNR_UID", "CON#", "INTCOL#") DISABLE;
