--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_LEVEL
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" ADD CONSTRAINT "MVIEW$_ADV_LEVEL_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
