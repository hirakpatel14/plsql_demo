--------------------------------------------------------
--  Constraints for Table LOGMNRT_MDDL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRT_MDDL$" MODIFY ("DEST_ROWID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRT_MDDL$" ADD CONSTRAINT "LOGMNRT_MDDL$_PK" PRIMARY KEY ("SOURCE_OBJ#", "SOURCE_ROWID") ENABLE;
