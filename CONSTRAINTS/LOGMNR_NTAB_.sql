--------------------------------------------------------
--  Constraints for Table LOGMNR_NTAB$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_NTAB$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_NTAB$" ADD CONSTRAINT "LOGMNR_NTAB$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
