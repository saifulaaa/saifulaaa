------   Q.No.1  Get all the reviews on the “Cyber Security” course.We can perform inner join on review and course table.  -----------

select 
* 
from review inner join course on course.id = review.course_id
where name like "Cyber Security";


----------  Q.No.2.Fetch all the courses that are being taught by “Alex”.  -----------------

select 
course.id as course_id,
course.name as course_name,
instructor.full_name as instructor_name
from 
course natural join instructor 
where instructor.full_name = 'Alex';


--------------  Q.No.3.Get all the student_ids who enrolled for the "Machine Learning" course in 2021.  ----------
select 
 student_id,
 full_name as student_name,
 name as course_name,
 enrollment_date
from 
(course inner join student_course on student_course.course_id = course.id) as A inner join student on A.student_id = student.id
where course.name = "Machine Learning" and strftime("%Y",enrollment_date) = "2021";
