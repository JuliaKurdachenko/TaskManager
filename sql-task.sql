--1)
select DISTINCT [status] from tasks
order by [status]

--2)

select Count(t.id), p.name from tasks t
join projects p on t.project_id = p.id
group by p.id , p.name
order by  Count(t.id) desc

--3)

select Count(t.id), p.name from tasks t
join projects p on t.project_id = p.id
group by p.id , p.name
order by p.name 

--4)

select * from tasks
where name like 'N%'

--5)

select Count(t.project_id) as Count, p.name as ProjectName from Projects p
left join tasks  t on p.id = t.project_id
where p.name like '%a%'
group by t.project_id, p.name

--6)
select name, count(name) as Count from tasks
group by name
having count(name) > 1
order by name 

--7)
select t.name, [status], Count([status])  as Count  from tasks t
group by [name], [status] 
having count([status])>0
order by count([status]) desc

--8)
select count(status), p.name from projects p
join tasks t on p.id = t.project_id
where t.status = 'completed'
group by [status], p.name
having count(status) >10
