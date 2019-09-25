--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_ELIGIBLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD CONSTRAINT "MVIEW$_ADV_ELIGIBLE_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
