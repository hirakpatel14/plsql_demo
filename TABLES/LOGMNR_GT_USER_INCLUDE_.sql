--------------------------------------------------------
--  DDL for Table LOGMNR_GT_USER_INCLUDE$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."LOGMNR_GT_USER_INCLUDE$" SHARING=METADATA 
   (	"USER_NAME" VARCHAR2(390 BYTE), 
	"USER_TYPE" NUMBER, 
	"PDB_NAME" VARCHAR2(390 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
