--------------------------------------------------------
--  Constraints for Table LOGMNR_REFCON$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_REFCON$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_REFCON$" ADD CONSTRAINT "LOGMNR_REFCON$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
