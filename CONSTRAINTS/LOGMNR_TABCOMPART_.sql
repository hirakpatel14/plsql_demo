--------------------------------------------------------
--  Constraints for Table LOGMNR_TABCOMPART$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_TABCOMPART$" MODIFY ("PART#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_TABCOMPART$" ADD CONSTRAINT "LOGMNR_TABCOMPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
