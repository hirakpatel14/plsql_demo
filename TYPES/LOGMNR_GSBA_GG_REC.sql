--------------------------------------------------------
--  DDL for Type LOGMNR$GSBA_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$GSBA_GG_REC" AS OBJECT
(
LOGMNR_UID NUMBER,
NAME           VARCHAR2(384),
VALUE          VARCHAR2(4000),
LOGMNR_SPARE1  NUMBER,
LOGMNR_SPARE2  NUMBER,
LOGMNR_SPARE3  VARCHAR2(4000),
LOGMNR_SPARE4  DATE
);

/
