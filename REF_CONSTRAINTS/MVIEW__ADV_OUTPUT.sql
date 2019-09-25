--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_OUTPUT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" ADD CONSTRAINT "MVIEW$_ADV_OUTPUT_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
