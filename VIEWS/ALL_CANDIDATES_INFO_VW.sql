--------------------------------------------------------
--  DDL for View ALL_CANDIDATES_INFO_VW
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."ALL_CANDIDATES_INFO_VW" ("DRAW_KEY", "POINTS_RANGE", "NO_OF_CANDIDATES", "AS_OF_DATE", "DIFF") AS 
  with CTE_all as 
(
select a.*,ROW_NUMBER() over (order by points_range desc, as_of_date desc) as row_no from All_Candidates_Tb a
--order by points_range, as_of_date desc
)
select draw_key,points_range,no_of_candidates,as_of_date, LEAD(no_of_candidates) over (order by row_no) - no_of_candidates  Diff
from CTE_all
;
