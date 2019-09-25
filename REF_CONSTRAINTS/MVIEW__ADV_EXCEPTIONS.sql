--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_EXCEPTIONS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_EXCEPTIONS" ADD CONSTRAINT "MVIEW$_ADV_EXCEPTION_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
