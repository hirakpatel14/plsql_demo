--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_INFO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" ADD CONSTRAINT "MVIEW$_ADV_INFO_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
