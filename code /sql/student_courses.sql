------------ creating student table---------------------------------------
create table student (
  id integer not null primary key,
  full_name varchar(200),
  age integer,
  gender char(1)
  );


------------ creating instructor table---------------------------------------
create table instructor (
  instructor_id integer not null primary key,
  full_name varchar(200),
  gender char(1)
  );


------------ creating course table---------------------------------------
create table course (
  id integer not null primary key,
  name varchar(200),
  duration integer,
  instructor_id integer,
  foreign key (instructor_id) references instructor(instructor_id) on delete cascade
  );


------------ creating review table---------------------------------------
create table review (
  id integer not null primary key,
  course_id integer,
  content text,
  created_at date,
  student_id integer,
  foreign key (course_id) references course(id) on delete cascade,
  foreign key (student_id) references student(id) on delete cascade
  );


------------ creating student_course table---------------------------------------
create table student_course (
  id integer not null primary key,
  student_id integer,
  course_id integer,
  score integer,
  enrollment_date datetime,
  foreign key (student_id) references student(id) on delete cascade,
  foreign key (course_id) references course(id) on delete cascade
  );





--------- inserting values into student table-------------
insert into 
student (id,full_name,age,gender)
values
(1,	"Varun",	16,	"M"),
(2,	"Ajay",	16,	"M"),
(3,	"Sandhya",	19,	"F"),
(4,	"Afrin",	16,	"F"),
(5,	"Khyathi",	18,	"F"),
(6,	"vihu",	16,	"M"),
(7,	"Olivia",	18,	"F"),
(8,	"Isabella",	19,	"F"),
(9,	"Jack",	19,	"M"),
(10,	"Jacob",	17,	"M"),
(11,	"batman",	18,"M");



--------------------- inserting values into instructor table-------------
insert into 
instructor (instructor_id,full_name,gender)
values
(101,	"Alex",	"M"),
(102,	"Arun",	"M"),
(103,	"Robert A. Iyer",	"M"),
(104,	"Bhavani",	"F"),
(105,	"Bentlee",	"M"),
(106,	"Umesh Gupta",	"M"),
(107,	"S. Radha Krishna",	"M"),
(108,	"Nihonbashi",	"M"),
(109,	"Miriyala Ravinder Reddy",	"M"),
(110,	"D. Shivani",	"F");



------------------ inserting values into course table--------------------
insert into 
course (id,name,duration,instructor_id)
values
(11,	"Machine Learning",	90,	102),
(12,	"Artificial Intelligence",	90,	102),
(13,	"Data Science",	60,	103),
(14,	"Augmented Reality",	80,	104),
(15,	"Cyber Security",	60,	101),
(16,	"Virtual Reality",	80,	105),
(17,	"Data Mining",	20,	null),
(18,	"Big Data",	20,	108),
(19,	"Data Structures",	30,	null),
(20,	"Cloud Computing",	15,	101),
(21,	"Ethical Hacking",	20,	null),
(22,	"Linux",	20,	102);



----------------- inserting values into Review table--------------------
insert into 
review (id,course_id,content,created_at,student_id)
values
(1,	11,	"Great course",	"2021-01-19",	1),
(2,	15,	"Good explanation",	"2021-01-19",	2),
(3,	15,	"Cyber Security is awesome",	"2021-01-20",	2),
(4,	12,	"Made understood well",	"2021-01-19",	4),
(5,	12,	"AI is next big thing",	"2021-02-20",	6),
(6,	14,	"Learning AR is made fun",	"2017-02-20",	5),
(7,	13,	"improved analytical skills",	"2018-02-20",	11),
(8,	12,	"Gained in-depth knowledge in AI field",	"2021-02-20",	4);



-------------------- inserting into student_course table ---------------------
insert into 
student_course (id,student_id,course_id,score,enrollment_date)
values
(1,	1,	11,	80,	"2021-01-16"),
(2,	2,	15,	60,	"2021-01-17"),
(3,	3,	11,	90,	"2021-01-19"),
(4,	4,	12,	45,	"2017-01-16"),
(5,	4,	13,	72,	"2019-02-12"),
(6,	5,	14,	88,	"2017-01-16"),
(7,	5,	15,	50,	"2019-02-12"),
(8,	6,	15,	75,	"2020-01-16"),
(9,	1,	15,	90,	"2020-01-16"),
(10,	6,	12,	88,	"2021-01-16"),
(11,	1,	13,	98,	"2021-08-16"),
(12,	1,	14,	40,	"2021-08-16"),
(13,	11,	11,	85,	"2019-01-16"),
(14,	11,	12,	43,	"2020-03-16"),
(15,	11,	13,	43,	"2021-02-16"),
(16,	2,	22,	80,	"2020-02-16");

