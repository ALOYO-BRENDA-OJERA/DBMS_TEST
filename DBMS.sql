/*CREATE TABLE students(
	Reg_no VARCHAR(255) PRIMARY KEY,
	First_Name VARCHAR(255),
	Last_Name VARCHAR(255),
	Course VARCHAR(255),
	Gender VARCHAR(255),
	D_O_B VARCHAR(50)
);
*/

SELECT * FROM students;
/*
INSERT INTO students(Reg_no, First_Name, Last_Name, Course, Gender, D_O_B)
VALUES ('1/2016', 'John', 'Mutuku', 'DCS', 'Male', '13/6/1990'),
      ('2/2016', 'Steve', 'Kipkorir', 'DCS', 'Male', '13/3/1985'),
	   ('3/2016', 'Susan', 'Mutua', 'CIT', 'Female', '19/11/1986'),
	   ('4/2017', 'Steve', 'Kingori', 'DBIT', 'Male', '1/3/1978');
	  
SELECT * FROM students;*/


-- (i)Code to display first_name,last_name,  and reg_no
/*SELECT First_Name, Last_Name, Reg_no
FROM students;
*/


--(ii)
--creating a column named Student_Name to combine first and last name.
--ALTER TABLE students
--ADD COLUMN Student_Name VARCHAR(255);
/*
UPDATE students
SET Student_Name = CONCAT(First_Name, ' ', Last_Name);
SELECT * FROM students;
*/

--(iii) to display details of all male students in the course DCS.
/*SELECT * FROM students 
WHERE Gender = 'Male' AND Course ='DCS';
*/

--(IV)To produce the total number of students per course
/*SELECT Course, COUNT(*) AS Total_Students
FROM students
GROUP BY Course;
*/

--(v)list of all male students between the year 1980 and 1989
/*SELECT *
FROM students
WHERE Gender = 'Male'
AND TO_DATE(SUBSTRING(D_O_B, 1, 10), 'DD/MM/YYYY') BETWEEN '1980-01-01' AND '1989-12-31';
*/
--(vi) modify the last name
/*UPDATE students
SET Last_name = 'Mwangi'
WHERE Reg_no = '4/2017';
SELECT * FROM students;
*/

--(vii) Delete all the students records from the table
--DROP TABLE students;



	   