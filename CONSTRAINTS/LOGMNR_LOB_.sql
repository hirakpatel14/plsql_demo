--------------------------------------------------------
--  Constraints for Table LOGMNR_LOB$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_LOB$" MODIFY ("CHUNK" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_LOB$" ADD CONSTRAINT "LOGMNR_LOB$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
