use database_1;
 select count(empdetails.EmpID) ,deptdetails.DeptName 
 from empdetails
 join deptdetails
 on empdetails.DeptID = deptdetails.DeptID
 group by deptdetails.DeptName ; 
 
 select empdetails.*
 from empdetails 
 join deptdetails
on empdetails.DeptID = deptdetails.DeptID
where DeptName = 'Logistics' ;
 
 select count(*)
 from saldetails
 where JoinDate > '2008-09-05' ;
 
 select deptdetails.DeptName , sum(saldetails.EmpSalary)
 from empdetails
 join deptdetails 
 on empdetails.DeptID = deptdetails.DeptID
 join saldetails
 on empdetails.EmpID = saldetails.EmpID
 group by DeptName ; 
 
 select avg(saldetails.EmpSalary)
 from empdetails
 join deptdetails 
 on empdetails.DeptID = deptdetails.DeptID
 join saldetails
 on empdetails.EmpID = saldetails.EmpID
 where DeptName = 'Store Management';
 
 select empdetails.FirstName , deptdetails.DeptName , saldetails.EmpSalary
 from empdetails
 join deptdetails 
 on empdetails.DeptID = deptdetails.DeptID
 join saldetails
 on empdetails.EmpID = saldetails.EmpID
 order by EmpSalary desc
 limit 3 ;
 
 select saldetails.EmpSalary,deptdetails.DeptName,empdetails.FirstName
  from empdetails
 join deptdetails 
 on empdetails.DeptID = deptdetails.DeptID
 join saldetails
 on empdetails.EmpID = saldetails.EmpID 
  where EmpSalary = (
 select max(EmpSalary)
 from empdetails
 ) ;
 
 select count(empdetails.EmpID) , avg(saldetails.EmpSalary), deptdetails.DeptName
 from empdetails
 join deptdetails 
 on empdetails.DeptID = deptdetails.DeptID
 join saldetails
 on empdetails.EmpID = saldetails.EmpID
 group by DeptName ;
 
 
 


 


 


 


 
 
 
 
 
