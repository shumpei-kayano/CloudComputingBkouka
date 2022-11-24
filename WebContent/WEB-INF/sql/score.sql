create table score (
	id int auto_increment primary key, 
	student_id int not null,
    times int not null,
	rika int not null,
    kokugo int not null,
    eigo int not null,
    syakai int not null,
    sugaku int not null
);

-- ----------2019年度生第１回------------
insert into score values(1, 1, 1, 100, 100, 100, 100, 100);
insert into score values(2, 2, 1, 35, 54, 87, 99, 86);
insert into score values(3, 3, 1, 75, 22, 90, 70, 73);
