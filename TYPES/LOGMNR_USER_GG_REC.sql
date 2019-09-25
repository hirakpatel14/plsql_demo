--------------------------------------------------------
--  DDL for Type LOGMNR$USER_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$USER_GG_REC" AS OBJECT
(
LOGMNR_UID     NUMBER,
USERNAME       VARCHAR2(384),
USERID         NUMBER,
LOGMNR_SPARE1  NUMBER,
LOGMNR_SPARE2  NUMBER,
LOGMNR_SPARE3  VARCHAR2(4000),
LOGMNR_SPARE4  DATE
);

/
