--------------------------------------------------------
--  DDL for View MONTH_DAY_LKP_VW
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MONTH_DAY_LKP_VW" ("MONTH_NAME", "DAYS") AS 
  SELECT MONTH_NAME,case when month_NAME = 'FEB' THEN decode(mod(TO_CHAR(SYSDATE,'yyyy'),4),0,29,28) ELSE DAYS END DAYS
FROM MONTH_DAY_LOOKUP
;
