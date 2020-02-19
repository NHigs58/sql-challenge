select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e
inner join salaries s on s.emp_no = e.emp_no
order by 1;

select * from employees
where hire_date between '1986-01-01' and '1986-12-31';

select m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, e.hire_date, m.to_date
from dept_manager m
join departments d on d.dept_no = m.dept_no
join employees e on e.emp_no = m.emp_no;

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
left join departments d on d.dept_no = de.dept_no
order by 1;

select * from employees 
where first_name = 'Hercules' and last_name like 'B%';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e 
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e 
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

select last_name, count(last_name) as "Name Count"
from employees
group by last_name
order by 2 desc;

