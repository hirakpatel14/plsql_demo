--------------------------------------------------------
--  DDL for Table BRANCH_DETAILS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BRANCH_DETAILS" 
   (	"BRANCH_ID" NUMBER, 
	"BRANCH_NAME" VARCHAR2(50 BYTE), 
	"BRANCH_ADDRESS" VARCHAR2(100 BYTE), 
	"ISFC_CODE" VARCHAR2(20 BYTE), 
	"CRTE_DT" DATE, 
	"CRTE_BY" VARCHAR2(50 BYTE), 
	"MDFY_DT" TIMESTAMP (6), 
	"MDFY_BY" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_BANK_DATA" ;
