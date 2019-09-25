--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_GC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD CONSTRAINT "MVIEW$_ADV_GC_FK" FOREIGN KEY ("FJGID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_FJG" ("FJGID#") ENABLE;
