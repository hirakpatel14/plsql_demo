--------------------------------------------------------
--  Constraints for Table LOGMNR_IDNSEQ$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_IDNSEQ$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_IDNSEQ$" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_IDNSEQ$" MODIFY ("SEQOBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_IDNSEQ$" MODIFY ("STARTWITH" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_IDNSEQ$" ADD CONSTRAINT "LOGMNR_IDNSEQ$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;