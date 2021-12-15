select * from students where year (date_of_birth)=1990;
select * from courses where cfu > 10;
select * from students where year (date_of_birth)<1991;
select level() like magistrale; 
select max(id) from departments; 
select * from teachers where phone is null;
