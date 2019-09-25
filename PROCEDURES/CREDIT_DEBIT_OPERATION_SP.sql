--------------------------------------------------------
--  DDL for Procedure CREDIT_DEBIT_OPERATION_SP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREDIT_DEBIT_OPERATION_SP" (acc_no IN number,cust_id In number, amount In number,debit_credit_flag  varchar2 , return_code out number)
as
balance number := 0;
QUERY VARCHAR2(10000);
v_rcode number := 0;
v_code  NUMBER;
v_errm  VARCHAR2(64);
begin
QUERY := 'SELECT balance  FROM bank_accounts where acc_no='||acc_no||' and cust_id ='||cust_id||'';

execute immediate query into balance;

if(debit_credit_flag ='C') then
    balance := balance + amount;
elsif (debit_credit_flag ='D') then
    balance := balance - amount;
end if;

QUERY := 'update bank_accounts set balance ='||balance||',MDFY_DT=sysdate, mdfy_by=''credit_debit_operation_sp''  where acc_no='||acc_no||' and cust_id ='||cust_id||'';
execute immediate query;
return_code := SQL%ROWCOUNT;
commit;

EXCEPTION
  WHEN OTHERS THEN
    v_code := SQLCODE;
    v_errm := SUBSTR(SQLERRM, 1, 164);
    DBMS_OUTPUT.PUT_LINE (v_code || ' ' || v_errm);
end credit_debit_operation_sp;

/
