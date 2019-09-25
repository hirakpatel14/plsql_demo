--------------------------------------------------------
--  Constraints for Table LOGMNR_OPQTYPE$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_OPQTYPE$" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_OPQTYPE$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_OPQTYPE$" ADD CONSTRAINT "LOGMNR_OPQTYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
