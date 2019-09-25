--------------------------------------------------------
--  DDL for Table OL$NODES
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."OL$NODES" SHARING=METADATA 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"NODE_ID" NUMBER, 
	"PARENT_ID" NUMBER, 
	"NODE_TYPE" NUMBER, 
	"NODE_TEXTLEN" NUMBER, 
	"NODE_TEXTOFF" NUMBER, 
	"NODE_NAME" VARCHAR2(64 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
