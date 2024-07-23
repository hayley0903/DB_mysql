/*20240723 JOIN 실습*/

select * from tb_school_info;
select * from tb_student_info;
select * from tb_score;

/* 대전 지역 학생들의 2024년 수능성적 중 국어 과목의 최고점을 얻은 학생의 정보*/
select T1.student_name,
		if(T1.student_graduate_yn = 'Y', ('졸업생'), ('재학생')) as 재학여부,
        T2.score_season as 수능년도, 
        T2.score_subject as 과목,
        T2.score_point as 점수
from tb_student_info T1
inner join tb_score T2
on T1.student_id = T2.student_id
and T2.score_season = '2024' 
and T2.score_subject = '언어'
where T2.score_point = (
	select MAX(sc.score_point)
	from tb_score sc
    where sc.score_season = '2024'
	and sc.score_subject = '언어');

/* 대전지역 학생들의 2024년 수능성적 중 수학점수 최저점을 얻읃 학생의 정보 */

select T1.student_name,
		if(T1.student_graduate_yn = 'Y', ('졸업생'), ('재학생')) as 재학여부,
        T2.score_season as 수능년도, 
        T2.score_subject as 과목,
        T2.score_point as 점수
from tb_student_info T1
inner join tb_score T2
on T1.student_id = T2.student_id
and T2.score_season = '2024' 
and T2.score_subject = '수학'
order by T2.score_point asc
limit 1 offset 0;


/*학생별 수능성적표*/
select T2.school_name as 학교명,
        T1.student_name as 학생이름,
        if(T1.student_graduate_yn = 'Y', ('졸업생'), ('재학생')) as 재학여부,
        (select score_point 
		from tb_score T3
		where T1.student_id = T3.student_id and score_subject = '언어' and score_season = '2024') as 언어,
         (select score_point 
		from tb_score T3
		where T1.student_id = T3.student_id and score_subject = '영어' and score_season = '2024') as 영어,
         (select score_point 
		from tb_score T3
		where T1.student_id = T3.student_id and score_subject = '수학' and score_season = '2024') as 수학,
         (select score_point 
		from tb_score T3
		where T1.student_id = T3.student_id and score_subject = '사회탐구1' and score_season = '2024') as 사회탐구1,
         (select score_point 
		from tb_score T3
		where T1.student_id = T3.student_id and score_subject = '사회탐구2' and score_season = '2024') as 사회탐구2
from tb_student_info T1
inner join tb_school_info T2 
ON T1.school_id = T2.school_id 
GROUP BY T1.student_id;

/*각각 점수*/
select score_point as 언어
from tb_score
where score_subject = '언어' and score_season = '2024';

select score_point as 영어
from tb_score
where score_subject = '영어' and score_season = '2024';

select score_point as 수학
from tb_score
where score_subject = '수학' and score_season = '2024';

select score_point as '사회탐구1'
from tb_score
where score_subject = '사회탐구1' and score_season = '2024';

select score_point as '사회탐구2'
from tb_score
where score_subject = '사회탐구2' and score_season = '2024';




/*error code 1418 발생시 입력*/
SET GLOBAL log_bin_trust_function_creators = 1;

select fn_getScore('2023', '언어', 1);


/*fn_getScore function 생성 후 function 사용하기*/
select T2.school_name as 학교명,
        T1.student_name as 학생이름,
		fn_getScore('2024', '언어', T1.student_id) as 언어, 
        fn_getScore('2024', '영어', T1.student_id) as 영어, 
        fn_getScore('2024', '수학', T1.student_id) as 수학, 
        fn_getScore('2024', '사회탐구1', T1.student_id) as '사회탐구1', 
        fn_getScore('2024', '사회탐구2', T1.student_id) as '사회탐구2' 
from tb_student_info T1
inner join tb_school_info T2 
ON T1.school_id = T2.school_id 
GROUP BY T1.student_id;


/* 'v_student_info' view 생성 후 조회하기*/
select * from v_student_info;

/* create view
select student.student_id,
		student.student_name,
		student.student_graduate_yn,
		school.school_name,
        school.school_area,
        school.school_addr,
        school.school_phone
from tb_student_info student
inner join tb_school_info school
on student.school_id = school.school_id;
*/

/*view를 join 가능 */
select * from v_student_info v
inner join tb_score score
on v.student_id = score.student_id;



