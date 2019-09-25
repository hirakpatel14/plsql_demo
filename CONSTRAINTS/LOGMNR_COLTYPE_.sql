--------------------------------------------------------
--  Constraints for Table LOGMNR_COLTYPE$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_COLTYPE$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_COLTYPE$" ADD CONSTRAINT "LOGMNR_COLTYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
