
use [Project 1 Employee Details]
;
--project status

with project_status as(
select 
project_id,
project_name,
project_budget,
'upcoming' as status
from upcoming_projects
union all
select
project_id,
project_name,
project_budget,
'completed' as status
from completed_projects
)



--- big table
select 
e.employee_id,
e.first_name,
e.last_name,
e.job_title,
e.salary,
d.Department_Name,
d.department_budget,
pa.project_id,
p.project_name,
p.project_budget,
p.status
from employees e
join departments d
on e.department_id = d.Department_ID
join project_assignments pa
on pa.employee_id = e.employee_id
join project_status p
on p.project_id = pa.project_id

