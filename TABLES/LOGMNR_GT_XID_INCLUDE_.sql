--------------------------------------------------------
--  DDL for Table LOGMNR_GT_XID_INCLUDE$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."LOGMNR_GT_XID_INCLUDE$" SHARING=METADATA 
   (	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE), 
	"PDBID" NUMBER, 
	"PDB_NAME" VARCHAR2(390 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
