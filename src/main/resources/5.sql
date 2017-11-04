select company_name, customer_name, min(project_cost) min_project_cost from
  (select company_name, customer_name, sum(cost) project_cost from companies co
    inner join companies_projects cop on co.company_id = cop.company_id
    inner join customers_projects cup on cop.project_id = cup.project_id
    inner join customers cu on cup.customer_id = cu.customer_id
    inner join projects p on cup.project_id = p.project_id
  group by company_name, customer_name) as temp
group by company_name, customer_name
