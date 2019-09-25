--------------------------------------------------------
--  DDL for Procedure INTEREST_CREDIT_SP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."INTEREST_CREDIT_SP" as
qry varchar2(1000);

MONTH_DAYS NUMBER;
int_rt_1_lac number := 0.06;
int_rt_2_lac number := 0.07;
int_rt_2_5_lac number := 0.05;
int_rt_5_abve number := 0.04;
int_amt number := 0;

bal_days_rec bal_days_rec_array_type;
acc_int_data_arr_rec acc_int_data_arr_rec_type;

v_code  NUMBER;
v_errm  VARCHAR2(64);
BEGIN
--count of days
SELECT DAYS INTO MONTH_DAYS FROM month_day_lkp_vw where month_name in (select to_char(sysdate,'MON') from dual );

--balance maintained for number of days
select bal_days_rec_type(acc_no,bal,sum(no_of_days),0) bulk collect into bal_days_rec
from (
    select acc_no,bal,decode(sign(end_day-start_day),-1, end_day+30-start_day ,1,end_day-start_day) no_of_days
    from (
            select acc_no,day end_day,lag(day,1,0) over (order by r_no) start_day,lag(balance,1,0) over (order by r_no) bal from (
            select acc_no,to_char(tran_date,'DD') as day,row_number() over (order by tran_date) r_no,  balance 
            from account_history a) 
         )
    where bal!=0)
group by acc_no,bal;

for item in bal_days_rec.first..bal_days_rec.last
loop
    if(bal_days_rec(item).amount > 500000) then
        int_amt := (bal_days_rec(item).amount - 500000)*int_rt_5_abve + 300000*int_rt_2_5_lac + 100000*int_rt_2_lac + 100000*int_rt_1_lac ;
    elsif (bal_days_rec(item).amount > 200000 and bal_days_rec(item).amount < 500000) then
        int_amt := (bal_days_rec(item).amount - 300000)*int_rt_2_5_lac + 100000*int_rt_2_lac + 100000*int_rt_1_lac ;
    elsif (bal_days_rec(item).amount > 100000 and bal_days_rec(item).amount < 200000) then
        int_amt := (bal_days_rec(item).amount - 100000)*int_rt_2_lac + 100000*int_rt_1_lac ;
    elsif (bal_days_rec(item).amount < 100000) then
        int_amt := bal_days_rec(item).amount*int_rt_1_lac;
    end if;

    int_amt := round(int_amt*bal_days_rec(item).no_of_days/365,4);
    bal_days_rec(item).int_amt := int_amt;
end loop;

-- calculate total interest for each account
select acc_int_data_rec_type(acc_no,sum(int_amt)) bulk collect into acc_int_data_arr_rec 
from table(bal_days_rec) 
group by acc_no;


for i in acc_int_data_arr_rec.first..acc_int_data_arr_rec.last
loop
    qry := 'update bank_accounts set balance = balance + '||acc_int_data_arr_rec(i).int_amt||',mdfy_dt = sysdate, mdfy_by= ''INTEREST_CREDIT_SP'' WHERE ACC_NO='|| acc_int_data_arr_rec(i).ACC_NO;  
    EXECUTE IMMEDIATE QRY;
    commit;
    dbms_output.put_line(acc_int_data_arr_rec(i).acc_no || '  ' ||acc_int_data_arr_rec(i).int_amt);
end loop;

exception
    WHEN OTHERS THEN
        v_code := SQLCODE;
        v_errm := SUBSTR(SQLERRM,1,164);
END;

/
