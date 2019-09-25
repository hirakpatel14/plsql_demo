--------------------------------------------------------
--  Constraints for Table LOGMNR_SPILL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_SPILL$" ADD CONSTRAINT "LOGMNR_SPILL$_PK" PRIMARY KEY ("SESSION#", "PDBID", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "STARTIDX", "ENDIDX", "FLAG", "SEQUENCE#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
