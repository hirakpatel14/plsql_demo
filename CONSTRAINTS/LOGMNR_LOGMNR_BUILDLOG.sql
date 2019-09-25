--------------------------------------------------------
--  Constraints for Table LOGMNR_LOGMNR_BUILDLOG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG" MODIFY ("INITIAL_XID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG" ADD CONSTRAINT "LOGMNR_LOGMNR_BUILDLOG_PK" PRIMARY KEY ("LOGMNR_UID", "INITIAL_XID") DISABLE;
