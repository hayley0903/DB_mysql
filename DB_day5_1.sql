/*20240715*/
/*주요함수*/

SELECT TRUNCATE(123.456, 2);
SELECT CEILING(123.456);
SELECT FLOOR(123.456);
SELECT ROUND(123.456, 2);
SELECT TRUNCATE(123.456, 2);
SELECT MOD(12345, 4); 

CREATE TABLE `tb_student_info_test` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(20) DEFAULT NULL,
  `student_grade` int DEFAULT '1',
  `studnt_idx` int not null,
  `student_zipcode` int DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

select * from tb_student_info_test;


INSERT INTO tb_student_info_test(
	student_name,
    student_grade,
    school_idx,
    student_zipcode,
    addr
)
SELECT student_name,
		student_grade,
		CASE
			WHEN student_school = '대전고등학교' then 1
			WHEN student_school = '대전여자고등학교' then 2
			WHEN student_school = '관평고등학교' then 3
            WHEN student_school = '관평여자고등학교' then 4
		END,
        student_zipcode,
        addr
FROM tb_student_info;

select * from tb_student_info;
select * from tb_student_info_test;
select * from tb_school_info;

desc tb_student_info_test;
