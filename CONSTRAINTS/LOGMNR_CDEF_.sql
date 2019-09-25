--------------------------------------------------------
--  Constraints for Table LOGMNR_CDEF$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_CDEF$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CDEF$" ADD CONSTRAINT "LOGMNR_CDEF$_PK" PRIMARY KEY ("LOGMNR_UID", "CON#") DISABLE;
