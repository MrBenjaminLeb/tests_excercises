-- SQLite
create table calc(x int, y int);

insert into calc values(10, 25);
insert into calc values(50, 100);

select x,y, (x+y) from calc;