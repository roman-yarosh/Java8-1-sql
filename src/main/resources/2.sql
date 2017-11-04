select p.project_id, p.project_name, sum(d.salary) as project_cost from projects p
  inner join developers_projects dp on p.project_id = dp.project_id
  inner join developers d on dp.developer_id = d.developer_id
group by p.project_id, p.project_name
order by project_cost desc
limit 1;
