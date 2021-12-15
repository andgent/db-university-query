--1.
select * from students where year (date_of_birth)=1990;
--2.
select * from courses where cfu > 10;
--3.
select * from students where year (date_of_birth)<1991;
--4.
select * from `degrees` where `level` like 'magistrale'; 
--5.
select max(id) from departments; 
--6.
select * from teachers where phone is null;
--7.
select year (enrolment_date) as enrolment_date , count(id) as students_per_year from students group by year (enrolment_date);
--8.
select avg(vote) from exam_student group by exam_id;
--9.
select d2.department_id, d.name, count(d.id) as degrees_per_department from `degrees`d2 inner join departments d on d2.department_id = d.id group by department_id;
--10.
select s.id , s.name, s.surname from students s inner join `degrees` d on s.degree_id = d.id where d.name = 'Corso di Laurea in Economia';
--11.
select * from `degrees` where department_id = 7 and `level` = 'magistrale';
--12.
select * from course_teacher where teacher_id = 44;
--13.
select s.name, s.surname, d.name, dep.name from departments dep inner join degrees d on dep.id = d.department_id inner join students s on d.id = s.degree_id order by s.surname, s.name asc;