--------------------------------------------------------
--  Constraints for Table LOGMNR_ICOL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_ICOL$" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_ICOL$" ADD CONSTRAINT "LOGMNR_ICOL$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
