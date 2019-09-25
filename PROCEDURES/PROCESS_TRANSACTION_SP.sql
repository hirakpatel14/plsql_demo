--------------------------------------------------------
--  DDL for Procedure PROCESS_TRANSACTION_SP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."PROCESS_TRANSACTION_SP" as 
query varchar2(1000);
rtrn_cd number;
v_code  NUMBER;
v_errm  VARCHAR2(64);
type tran_rec_type is record
(
    tran_id transactions.tran_id%type,
    ACC_NO transactions.acc_no%type,
    cust_id customers.cust_id%type,
    DEBIT_CREDIT_IND VARCHAR2(1),
    AMOUNT transactions.tran_amt%type
);

tran_rec tran_rec_type;
CURSOR TRAN_DATA IS SELECT t.tran_id,t.ACC_NO,cust_id,DECODE(t.TRAN_TYPE,'DEBIT','D','CREDIT','C','N'),t.TRAN_AMT 
FROM transactions t, bank_accounts b
where t.acc_no = b.acc_no and t.PROC_FLAG<>'P';

BEGIN

if not tran_data%isopen then
    open tran_Data;
end if;

loop
    fetch tran_data into tran_rec;
    exit when tran_data%notfound;
    credit_debit_operation_sp(tran_Rec.acc_no,tran_rec.cust_id,tran_Rec.amount,tran_rec.DEBIT_CREDIT_IND,rtrn_cd);

    if(rtrn_cd <> 0) then
    query := 'UPDATE transactions set PROC_FLAG=''P'', MESSAGE=''Transaction processed successfully'', mdfy_dt = sysdate, mdfy_by=''Process_Transaction_SP'' 
              where tran_id = '||tran_rec.tran_id;
    execute immediate query;
    commit;
    else
    query := 'UPDATE transactions set PROC_FLAG=''R'', MESSAGE=''Transaction processing failed'', mdfy_dt = sysdate, mdfy_by=''Process_Transaction_SP'' 
              where tran_id = '||tran_rec.tran_id;
    execute immediate query;
    commit;
    end if;
end loop;

close tran_data;

EXCEPTION
    WHEN OTHERS THEN
        V_CODE := SQLCODE;
        V_ERRM := SUBSTR(SQLERRM,1,164);
        DBMS_OUTPUT.PUT_LINE (v_code || ' ' || v_errm);
END Process_Transaction_SP;

/
