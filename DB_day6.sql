/*20240717*/
/*서브쿼리*/

SELECT (
	  SELECT si.student_name
	  FROM tb_student_info si
	  WHERE si.student_id = sc.student_id) AS student_name,
	sc.*
FROM tb_score sc;

select * from tb_student_info;
select * from tb_score;

select student.student_name, 
	student.student_grade, (
	select score.score_point
    from tb_score score
    where score.score_subject = '국어'
    and score.student_id = student.student_id) as 국어
from tb_student_info student;


select student.student_name, student.student_grade, student.student_school_area, student.student_school, 
(select avg(score_point)
 from tb_score score
 where score.student_id = student.student_id
) as 평균점수
from tb_student_info student
where student_grade =1 and student_school_area = '서구';


select * from tb_school_info;
select * from tb_student_info_test;

/* 실습 3 */
select student.student_name, student.student_grade, 
(select school.school_area
from tb_school_info school
where student.school_idx = school.school_idx
) as schoo_name
from tb_student_info_test student
where student.student_grade = 1;

select student.student_name, student.student_grade, 
(select school.school_name
from tb_school_info school
where student.school_idx = school.school_idx
) as school_name
from tb_student_info_test student
where student.student_grade = 1;

select student.student_name, student.student_grade, 
(select school.school_phone
from tb_school_info school
where student.school_idx = school.school_idx
) as schoo_name
from tb_student_info_test student
where student.student_grade = 1;

select student.student_name, student.student_grade, 
(select school.school_addr
from tb_school_info school
where student.school_idx = school.school_idx
) as schoo_name
from tb_student_info_test student
where student.student_grade = 1;


SELECT *
FROM tb_score
   WHERE student_id = (	
	SELECT student_id    
 	FROM tb_student_info    
	WHERE student_name = '홍길동' 
	); 



select * from tb_student_info_test;
select * from tb_school_info;


/*실습 4*/
select student.student_name, 
	student.student_grade, 
	(select school_name
    from tb_school_info
    where school_idx = student.school_idx) as '학교명',
    student.student_zipcode, 
    student.addr
	from tb_student_info_test student
	where student.school_idx in (
		select school_idx 
		from tb_school_info
		where school_area = '중구');

select student.student_name, 
		student.student_grade, 
		(select school_name from tb_school_info where school_idx = student.school_idx ) as school_name,
        (select avg(score_point) from tb_score where student_id = student.student_id) as average
from tb_student_info_test student
	where student.school_idx in (
		select school_idx 
		from tb_school_info
		where school_area = '중구')
        and
        student.student_id in (
		select student.student_id, avg(score_point)
		from tb_score
		group by student_id
		having avg(score_point)<80);
    
    
select student.student_name, student.student_school, student.student_grade, 
(select avg(score_point)
 from tb_score score
 where score.student_id = student.student_id
) as 평균성적
from tb_student_info student
where student_school_area = '중구'
having 평균성적 < 80;


/*인라인뷰 + rownum 순번매기기 + T.rownum의 오름차순 내림차순 지정가능 */

select * from
(select (@ROWNUM:=@ROWNUM+1) AS rownum, score.*
from tb_score score,
(SELECT @ROWNUM:=0 FROM DUAL) R
where score.score_subject = '국어'
order by score_point desc) as T
order by T.rownum asc
limit 10 offset 0;
