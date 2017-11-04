select sum(salary) as java_developers_salary from developers d
  inner join developers_skills ds on d.developer_id = ds.developer_id
  inner join skills s on ds.skill_id = s.skill_id
where skill_name = 'Java'