--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_ELIGIBLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("SUMOBJN#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("BYTECOST" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("FREQUENCY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD CONSTRAINT "MVIEW$_ADV_ELIGIBLE_PK" PRIMARY KEY ("SUMOBJN#", "RUNID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
