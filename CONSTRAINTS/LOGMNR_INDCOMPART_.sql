--------------------------------------------------------
--  Constraints for Table LOGMNR_INDCOMPART$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_INDCOMPART$" MODIFY ("PART#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_INDCOMPART$" ADD CONSTRAINT "LOGMNR_INDCOMPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
