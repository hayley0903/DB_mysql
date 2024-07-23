/*20240718*/
/*JOIN*/


select * from tb_school_info;
select * from tb_student_info;
select * from tb_score;

/*실습1*/
select T2.school_name, 
		T2.school_area,
        T1.student_name
from tb_student_info T1
inner join tb_school_info T2
on T1.school_id = T2.school_id;

/*실습2*/
select T1.student_name
from tb_student_info T1
inner join tb_score T2
ON T1.student_id = T2.student_id
and T2.score_season = '2023'
where T1.student_graduate_yn = 'Y' and T2.score_id is null;

/*실습3*/
select T1.student_name,
if(T1.student_graduate_yn = 'Y', ('졸업생'), ('재학생')),
T2.school_name,
sum(T3.score_point)
from tb_student_info T1
INNER JOIN tb_school_info T2
on T1.school_id = T2.school_id 
INNER JOIN tb_score T3
ON T1.student_id = T3.student_id
where T3.score_season = '2024'
group by T1.student_id
order by sum(T3.score_point) desc
limit 5 offset 0;

/*실습4*/
select T.student_graduate_yn, 
avg(T.sumPoint) 
from (
select
T1.student_id,
T1.student_graduate_yn,
sum(T2.score_point) as sumPoint
from tb_student_info T1
inner join tb_score T2
on T1.student_id = T2.student_id
and T2.score_season = '2024' 
group by T1.student_id ) T 
group by T.student_graduate_yn;

/*실습4 다른예시*/
select T1.student_graduate_yn,
		avg(score.score_point) as sumPoint
from tb_student_info T1
inner join (select student_id, score_season, sum(score_point) as score_point
			from tb_score
			where score_season = '2024'
			group by student_id) score
on T1.student_id = score.student_id
group by T1.student_graduate_yn;

select student.student_graduate_yn,
		(select sum(score.score_point)/count(student.student_id)
		from tb_score score
		where score_season = '2024'
		and score.student_id in 
		(select st.student_id
		from tb_student_info st 
		where st.student_graduate_yn = student.student_graudate_yn)) as 평균성적
        from tb_student_info student
        group by student.student.graduate_yn;