--------------------------------------------------------
--  DDL for Procedure DAILY_DATE_SET_SP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DAILY_DATE_SET_SP" ( date_to_set IN date) AS
DAY_OF_WEEK VARCHAR2(100);
QUERY VARCHAR2(10000);
CURR_BUS_DT DATE := null;
v_code  NUMBER;
v_errm  VARCHAR2(64);
BEGIN
QUERY := 'SELECT CURR_BUS_DT  FROM PROC_DT_TB';
EXECUTE IMMEDIATE QUERY INTO CURR_BUS_DT;

    if(curr_bus_dt < date_to_set) then
    DBMS_OUTPUT.PUT_LINE('In');
    Query := 'SELECT TO_CHAR(to_date('''||date_to_set||''',''dd-mon-yy''),''DY'') FROM DUAL';
    DBMS_OUTPUT.PUT_LINE(query);
    EXECUTE IMMEDIATE query INTO DAY_OF_WEEK;
    DBMS_OUTPUT.PUT_LINE(DAY_OF_WEEK);
        IF DAY_OF_WEEK NOT IN ( 'SAT','SUN') THEN
            query := 'update proc_dt_Tb set curr_bus_dt = to_date('''||date_to_set||''',''dd-mon-yy''), next_bus_dt = to_date('''||date_to_set||''',''dd-mon-yy'')+1, prev_bus_dt = to_date('''||date_to_set||''',''dd-mon-yy'')-1';
            DBMS_OUTPUT.PUT_LINE(query);        
            execute immediate query;
        ELSE
           if(day_of_week = 'SAT') then
                query := 'update proc_dt_Tb set curr_bus_dt = to_date('''||date_to_set||''',''dd-mon-yy'')+2, to_date('''||date_to_set||''',''dd-mon-yy'') = to_date('''||date_to_set||''',''dd-mon-yy'')+3, prev_bus_dt = to_date('''||date_to_set||''',''dd-mon-yy'') -1';
                execute immediate query;
           elsif (day_of_week = 'SUN') THEN
                query := 'update proc_dt_Tb set curr_bus_dt = to_date('''||date_to_set||''',''dd-mon-yy'')+1, to_date('''||date_to_set||''',''dd-mon-yy'') = to_date('''||date_to_set||''',''dd-mon-yy'')+2, prev_bus_dt = to_date('''||date_to_set||''',''dd-mon-yy'') -2';
                execute immediate query;
           END IF;
        END IF;
    End IF;

DBMS_OUTPUT.PUT_LINE ('git repository check');
EXCEPTION
  WHEN OTHERS THEN
    v_code := SQLCODE;
    v_errm := SUBSTR(SQLERRM, 1, 164);
    DBMS_OUTPUT.PUT_LINE (v_code || ' ' || v_errm);
END DAILY_DATE_SET_SP;

/
