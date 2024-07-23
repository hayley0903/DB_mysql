/*202407116*/
/*주요함수*/


/*concat*/
select concat('A', '-', 'B');

select * from tb_student_info
where addr like concat('%', student_school_area, '%') and student_school_area = '서구';

/*replace*/
select replace('Hello World', 'World', 'MySQL');
select replace('ABCD', 'BC', 'CB');

/*substring*/
select substring('동해물과백두산이', 1, 3);

/*trim, rtrim, ltrim*/
select if(rtrim('  hello  ') = '  hello', '참', '거짓');

/*right, left, upper, lower*/
select right('hello world', 5);
select upper('hello world');
select lower('HELLO');



select * from tb_student_info;

/*tb_student_info 테이블의 학생정보를 OO고등학교_O학년_OOO의 형태로 출력하시오.*/
select concat (student_school, ' ', student_grade, '학년', ' ', student_name) as '학생정보' from tb_student_info;

/*휴대전화번호를 010-0000-000 에서 –을 공백으로 변환하여 출력하시오.*/
select replace ('010-8139-0617', '-', ' ');

/*본인 휴대전화번호의 가운데 4자리만 출력하시오.*/
select substring('010-8139-0617', 5, 4);


/*본인 휴대전화번호에서 010- 을 제외한 나머지 번호를 출력하시오.*/
select substring('010-8139-0617', 5, 9);
select right('010-8139-0617', 9);

/*본인 휴대전화번호에서 앞 3자리, 중간 4자리, 마지막 4자리를 추출한 후 문자열을 합쳐서(CONCAT사용) 
          010-0000-0000의 형태로 출력하시오.*/
select concat(substring('010-8139-0617', 1, 4), '-', substring('010-8139-0617', 5, 4), '-', substring('010-8139-0617', 10, 4)) as '휴대전화번호';
select concat(left('010-8139-0617', 3), '-', substring('010-8139-0617', 5, 4), '-', right('010-8139-0617', 4)) as 전화번호;



/*날짜관련*/
select now();
select curdate();
select curtime();
select current_timestamp();

/*data type 이 current_timestamp로 설정된 경우, value값을 따로 넣을 필요없음*/
select * from data_insert_history;

insert into data_insert_history (table_name)
values('test');


select date('2024-07-16');
select month('2024-07-16');
select year('2024-07-16'); 
select monthname('2024-07-16');
select dayofmonth('2024-07-16');
select day('2024-07-16');

select now();
select hour(now());
select minute(now());
select second(now());

/*d-day계산하기*/
select datediff(curdate(), '2024-07-19');
select datediff('2024-07-19', curdate());

select timediff(now(), '2024-01-01 11:30:00');

select date_add(curdate(), interval 30 day);
select date_sub(curdate(), interval 30 year);

select date_format(now(), '%Y-%M-%D-%H');
select date_format(now(), '%y-%m-%d-%h');

select date_format('2024-01-01 14:30:00', '%Y-%M-%D %H-%I-%S');
select date_format('2024-01-01 14:30:00', '%y-%m-%d %h-%i-%s');

select datediff (curdate(), '1987-06-17');
select now();

select if (1>0, 'true', 'false');

select if(student_grade =1, '신입생', '재학생') as 분류
from tb_student_info;

/*
select
	case when 조건 then 반환값
    case when 조건 then 반환값
		else 반환값 END
FROM 테이블명;
*/

select 
	CASE 
		WHEN student_grade =1 THEN '신입생'
		WHEN student_grade =2 THEN '재학생'
		ELSE '수험생' END
        AS 학생정보
from tb_student_info;

select ifnull(null, 'Hello World');

SELECT *, if(score_point >= 90, '우수', '보통') as 우수여부 from tb_score; 


/*실습예제*/
select score_id, score_subject, score_point,
	case
		when score_point >= 70 and score_point < 79 then '노력필요'
        when score_point >= 80 and score_point < 89 then '보통'
        when score_point >= 90 and score_point <= 100 then '우수'
        else '제외' end
        as 우수여부 
	from tb_score;
    
    select score_id, score_subject, score_point,
		case
		when score_point between 90 and 100 then '노력필요'
		when score_point between 80 and 89 then '노력필요'
		when score_point between 90 and 100 then '노력필요'
        else '제외' end
        as 우수여부 
	from tb_score;
    
    select score_id, score_subject, score_point,
	case
		when score_point >= 90 then '우수'
        when score_point >= 80 then '보통'
        else '노력필요' end
        as 우수여부 
	from tb_score;