/*20240710-12*/
/*MySQL 설치, MariaDB, 데이터자료형, CRUD*/

/*20240715*/
/*select, union*/

show tables;
desc tb_student_info;
desc tb_school_info;
desc tb_score;

select * from tb_student_info;
select * from tb_score;

/*학생들 중 서구에 있는 고등학교에 재학중이고, 2학년인 학생 정보를 출력하시오.*/
select * from tb_student_info
where student_grade = 2 and student_school_area = '중구';

/*관평고등학교와 관평여자고등학교의 학생 정보를 출력하시오.*/
select * from tb_student_info
where student_school = '관평고등학교' or student_school = '관평여자고등학교';

select * from tb_student_info
where student_grade between 1 and 2;

/*국어점수가 80점 이상 90점이하인 학생수를 구하시오.*/
select * from tb_score
where score_subject ='국어'
and score_point between 80 and 90;

/*수학점수가 70점 이상 80점 미만이 아닌 학생수를 구하시오.*/
select * from tb_score
where score_subject = '수학'
and score_point >= 70
and score_point < 80;

/*김씨 성을 가진 학생정보를 출력하시오.*/
select * from tb_student_info
where student_name like '김__';

/* 관평고등학교와 관평여자고등학교의 학생 정보를 LIKE를 사용하여 출력하시오*/
select * from tb_student_info
where student_school like '관평%';

/*중구에 있는 여자고등학교에 다니는 학생을 출력하시오*/
select * from tb_student_info
where student_school_area = '중구' and student_school like '%여자%';

/*1,2학년 학생의 정보*/
select * from tb_student_info
where student_grade in(1,2);

/*3학년의 학생 정보*/
select * from tb_student_info
where student_grade not in(1,2);

/* 관평고와 대전고를 제외한 나머지 학생정보*/
select * from tb_student_info
where student_school not in ('관평고등학교', '대전고등학교');

/*대전고등학교와 대전여자고등학교의 학생 수를 출력하시오*/
select student_school, count(student_id) from tb_student_info
where student_school in('대전고등학교', '대전여자고등학교')
group by student_school;

/*학생 정보 중 여자고등학교에 재학중인 3학년 학생들을 조회하시오*/
select * from tb_student_info
where student_school like '%여자%' and student_grade in (3);

/*학생 중 국어점수 80점 이상이고 서구에 있는 학교를 다니는 학생 조회하시오*/
select * from tb_score 
where score_subject = '국어' and score_point >= 80 and student_id between 7 and 12;

/*서구에 거주하는 학생들 각자의 평균점수를 구하시오*/
select student_id, avg(score_point) from tb_score
where student_id between 7 and 12
group by student_id;

/*별칭 & 오름차순, 내림차순*/
select student_id as id, 
student_name as name,
student_school as school,
student_school_area as schoolArea
from tb_student_info;

select student_id as id, 
student_name as name,
student_school as school,
student_school_area as schoolArea,
student_grade as grade
from tb_student_info
order by student_grade asc;

select student_id as id, 
student_name as name,
student_school as school,
student_school_area as schoolArea,
student_grade as grade
from tb_student_info
order by student_grade desc;

/*UNION & UNIONALL*/
/*UNION은 중복제거기능*/
/*UNION은 중복포함*/
select T1.student_id as id,
T1.student_name as name,
T1.student_school as school,
T1.student_grade as grade
from tb_student_info T1
where T1.student_grade = 2
union
select T2.student_id as id,
T2.student_name as name,
T2.student_school as school,
T2.student_grade as grade
from tb_student_info T2
where T2.student_grade =2;



