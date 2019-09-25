--------------------------------------------------------
--  Constraints for Table LOGMNR_ATTRCOL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_ATTRCOL$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_ATTRCOL$" ADD CONSTRAINT "LOGMNR_ATTRCOL$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
