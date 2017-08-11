drop table department
create table department ( \
	dname     varchar(20) not null, \
	chair    varchar(20) not null, \
	location varchar(20) not null, \
	primary key (dname,chair,location))

drop table class
create table class( \
	courseNum  varchar(10) not null, \
	cname      varchar(40) not null, \
	primary key (courseNum, cname))

drop table courses
create table courses ( \
	courseNum  varchar(10) not null, \
	section    varchar(10) not null, \
	semester   varchar(10) not null, \
	cname       varchar(10) not null, \
	insturctor varchar(10) not null, \
	primary key (semester, instructor) \
	foreign key (courseNum) references class(courseNum) \
	foreign key (cname) references class(cname))

drop table student 
create table student ( \
	id     integer not null, \
	sname  varchar(20) not null, \
	primary key(id))

drop table mark
create table mark ( \
	id    integer not null, \
    instructor  varchar(20) not null, \
    semester    varchar(20) not null, \
    courseNum   varchar(20) not null, \
    foreign key (id) references student(id) \
	foreign key (instructor) references courses(instructor) \
	foreign key (courseNum) references class(courseNum) \
	foreign key (semester) references courses(semester))

