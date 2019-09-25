--------------------------------------------------------
--  DDL for Table TRANSACTIONS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TRANSACTIONS" 
   (	"TRAN_ID" NUMBER, 
	"TRAN_TYPE" VARCHAR2(10 BYTE), 
	"TRAN_AMT" NUMBER, 
	"TRAN_MSG" VARCHAR2(100 BYTE), 
	"ACC_NO" NUMBER, 
	"TRAN_TIMESTAMP" TIMESTAMP (6), 
	"CRTE_DT" DATE, 
	"CRTE_BY" VARCHAR2(50 BYTE), 
	"MDFY_DT" TIMESTAMP (6), 
	"MDFY_BY" VARCHAR2(50 BYTE), 
	"PROC_FLAG" VARCHAR2(1 BYTE) DEFAULT 'U', 
	"MESSAGE" VARCHAR2(100 BYTE) DEFAULT 'Yet to be processed'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_BANK_DATA" ;