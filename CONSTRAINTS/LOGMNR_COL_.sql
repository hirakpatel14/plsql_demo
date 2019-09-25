--------------------------------------------------------
--  Constraints for Table LOGMNR_COL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_COL$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_COL$" ADD CONSTRAINT "LOGMNR_COL$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
