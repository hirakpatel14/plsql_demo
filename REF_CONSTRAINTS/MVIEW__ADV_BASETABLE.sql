--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_BASETABLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" ADD CONSTRAINT "MVIEW$_ADV_BASETABLE_FK" FOREIGN KEY ("QUERYID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_WORKLOAD" ("QUERYID#") ENABLE;
