--------------------------------------------------------
--  DDL for View CANDIDATES_INFO_450_VW
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."CANDIDATES_INFO_450_VW" ("DRAW_KEY", "POINTS_RANGE", "NO_OF_CANDIDATES", "AS_OF_DATE", "DIFF") AS 
  with CTE_450 as 
(
select c.*,ROW_NUMBER() over (order by points_range desc, as_of_date desc) as row_no from Candidate_Segregation_Tb c
--order by points_range, as_of_date desc
)
select draw_key,points_range,no_of_candidates,as_of_date, Lead(no_of_candidates) over (order by row_no) - no_of_candidates  Diff
from CTE_450
;
