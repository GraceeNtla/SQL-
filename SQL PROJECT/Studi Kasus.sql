-- STUDI KASUS 1
--Bagaimana query untuk mendapatkan seluruh data dari tabel
create table student_perform(
gender varchar,
race_or_ethnicity varchar,
parental_level_of_education varchar,
lunch varchar,
test_preparation_course varchar,
math_score int,
reading_score int,	
writing_score int
)
select*from student_perform

--Ada grup race/ethnicity apa saja pada dataset tersebut?
SELECT
    DISTINCT race_or_ethnicity
FROM
    student_perform
ORDER BY
    race_or_ethnicity;
	
--Orang dengan grup apa yang memiliki nilai math sama dengan 0?
select*from student_perform where math_score = 0 order by race_or_ethnicity

--Berapa nilai writing terkecil orang yang memiliki orangtua dengan tingkat pendidikan associate's degree
SELECT * FROM student_perform 
WHERE parental_level_of_education = 'associate''s degree' 
ORDER BY writing_score ASC;

--Jika nilai writing terendah orang di grup A dijumlahkan dengan nilai writing terendah orang di grup B, maka hasilnya adalah…
SELECT * FROM student_perform 
WHERE parental_level_of_education = 'associate''s degree' 
ORDER BY writing_score ASC;

-- Jika nilai writing terendah orang di grup A dijumlahkan dengan nilai writingterendah orang di grup B, maka hasilnya adalah…
SELECT * FROM student_perform 
WHERE race_or_ethnicity in ('group A','group B')
ORDER BY writing_score ASC;

-- Berapa orang yang memiliki nilai math kurang dari 65 namun memiliki nilai writing lebih besar dari 80?
SELECT * FROM student_perform 
WHERE math_score < 65 and writing_score >80
ORDER BY
    writing_score ASC;

-- Jika data di-filter dengan nilai reading lebih dari 10 namun kurang dari 25, tingkat pendidikan orangtua apa saja yang termasuk ke dalam data tersebut?
SELECT * FROM student_perform 
WHERE reading_score > 10 and reading_score <25
ORDER BY
    reading_score ASC;

--STUDI KASUS 2
-- Berapa jumlah record pada dataset tersebu
SELECT
    count(*)
FROM
   student_perform;
--perbandingan rata-rata nilai reading laki-laki dan perempuan
SELECT gender, avg (reading_score)
from student_perform
group by gender

-- nilai math tertinggi dan terendah dari masing-masing tingkatan pendidikan orangtua (parental level of education)
select parental_level_of_education, max (math_score), min (math_score)
from student_perform
group by parental_level_of_education

-- Berapa nilai rata-rata dari math, reading dan writing orang bergender perempuan yang pernah / sudah menyelesaikan kursus persiapan ujian (test_preparation_course)
select gender,
	test_preparation_course,
	avg(math_score) as avg_math_Score,
	avg (reading_score) as avg_reading_score,
	avg(writing_score) as avg_writing_score
from student_perform
where gender ='female' and test_preparation_course='completed'
GROUP BY gender, test_preparation_course;

-- Berapa nilai rata-rata writing orang yang memiliki orangtua yang tingkat pendidikannya adalah high school / some high school? (digabung, tidak terpisah)
SELECT
    AVG(writing_score) AS avg_writing_score
FROM
    student_perform
WHERE
    parental_level_of_education LIKE '%high school%';

SELECT gender ,
 race_or_ethnicity,
 test_preparation_course,
 AVG(math_score) AS avg_math_score,
 AVG(reading_score) AS avg_reading_score, 
 AVG(writing_score) AS avg_writing_score
FROM student_perform
where math_score >70
GROUP BY gender,
 race_or_ethnicity,
 test_preparation_course
ORDER BY gender,
 race_or_ethnicity,
 test_preparation_course;


 