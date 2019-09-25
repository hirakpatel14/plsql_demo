--------------------------------------------------------
--  Constraints for Table LOGMNR_SEED$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_SEED$" MODIFY ("NULL$" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SEED$" ADD CONSTRAINT "LOGMNR_SEED$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
