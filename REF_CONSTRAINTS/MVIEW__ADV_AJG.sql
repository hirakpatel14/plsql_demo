--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_AJG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" ADD CONSTRAINT "MVIEW$_ADV_AJG_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
