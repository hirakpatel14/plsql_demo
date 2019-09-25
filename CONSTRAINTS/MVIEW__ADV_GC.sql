--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_GC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("GCID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("FJGID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("GCDESLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("GCDES" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD CONSTRAINT "MVIEW$_ADV_GC_PK" PRIMARY KEY ("GCID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;