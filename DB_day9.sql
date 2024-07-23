/*20240722 JOIN 실습*/
select * from tb_school_info;
select * from tb_student_info;
select * from tb_score;

/*2024 동구 소재 고등학교 학생들의 수능성적을 조회*/
select T2.school_area,
		T2.school_name,
        T1.student_id,
        T1.student_name,
        if(T1.student_graduate_yn = 'Y', ('졸업생'), ('재학생')) AS 학생구분,
        sum(T3.score_point) AS 수능성적
from tb_student_info T1
inner join tb_school_info T2
on T1.school_id = T2.school_id
and T2.school_area = '동구'
inner join tb_score T3
on T1.student_id = T3.student_id
and T3.score_season = '2024'
group by T1.student_id;

/*2024 동구 소재 고등학교 학생들의 수능성적을 조회*/
select T2.school_area,
		T2.school_name,
        T1.student_id,
        T1.student_name,
        if(T1.student_graduate_yn = 'Y', ('졸업생'), ('재학생')) AS 학생구분,
        sum(T3.score_point) AS 수능성적
from tb_student_info T1
inner join tb_school_info T2
on T1.school_id = T2.school_id
and T2.school_area = '동구'
inner join tb_score T3
on T1.student_id = T3.student_id
and T3.score_season = '2024'
group by T1.student_id;

/*2024 남자 고등학교를 재학중인 학생들의 수능성적을 조회*/

select T2.school_area,
T2.school_name,
T1.student_id,
T1.student_name,
if(T1.student_graduate_yn = 'Y', ('졸업생'), ('재학생')) AS 학생구분,
sum(T3.score_point) AS 수능성적
from tb_student_info T1
inner join tb_school_info T2
on T1.school_id = T2.school_id
and T2.school_id not in(3, 6)
inner join tb_score T3
on T1.student_id = T3.student_id
and T3.score_season = '2024'
group by T1.student_id;

/*2024년 학교별 수능성적의 평균성적을 조회하시오*/

select T.school_name as 학교명, 
		avg(T.sumPoint) as 수능평균성적
        from
(select T2.school_name,
		T1.student_id,
		sum(T3.score_point) as sumPoint
from tb_student_info T1
inner join tb_school_info T2 
ON T1.school_id = T2.school_id 
inner join tb_score T3
on T1.student_id = T3.student_id
and T3.score_season = '2024'
GROUP BY T2.school_name, T1.student_id ) T
group by T.school_name;

select * from new_view;

select T.school_name as 학교명, 
		ifnull(avg(T.sumPoint), 0) as 수능평균성적
        from
(select T2.school_name,
		T1.student_id,
		sum(T3.score_point) as sumPoint
from tb_student_info T1
right join tb_school_info T2 
ON T1.school_id = T2.school_id 
left join tb_score T3
on T1.student_id = T3.student_id
and T3.score_season = '2024'
GROUP BY T2.school_name, T1.student_id ) T
group by T.school_name;

/*right and left join 사용하기*/
select T2.school_name,
		T1.student_id,
		sum(T3.score_point) as sumPoint
from tb_student_info T1
right join tb_school_info T2 
ON T1.school_id = T2.school_id 
left join tb_score T3
on T1.student_id = T3.student_id
and T3.score_season = '2024'
GROUP BY T2.school_name, T1.student_id;
