DROP TABLE student;

CREATE TABLE student (
    Student_ID INT AUTO_INCREMENT,
    Student_Name VARCHAR(25) NOT NULL,
    Major VARCHAR(25) DEFAULT 'Undecided',
    PRIMARY KEY (Student_ID)
);

/*
Student_Name VARCHAR(25) NOT NULL,
    Major VARCHAR(25) DEFAULT 'Undecided',
						UNIQUE
                        
INSERT INTO student(Student_ID, Student_NAME) VALUES(1, 'Tony');

DESCRIBE student;

DROP TABLE student; 

ALTER TABLE student ADD GPA DECIMAL(3, 2);

ALTER TABLE student DROP COLUMN GPA; */
SELECT * FROM student;

INSERT INTO student(Student_NAME, major) VALUES('Tony', 'Socialogy');
INSERT INTO student(Student_NAME, major) VALUES('Kot', 'Biology');
INSERT INTO student(Student_ID, Student_Name) VALUES(3, 'Who');
INSERT INTO student VALUES (4, 'Jack', 'Bio');

/*Updating the tab*/
SELECT * FROM student;

UPDATE student
SET Major = 'Bio'
WHERE Major = 'BIO';

UPDATE student
SET Major = 'Computer Science'
WHERE Major = 'Socialogy';

UPDATE student
SET Major = 'Computer Science'
WHERE Student_ID = 2 OR Student_ID = 3;

UPDATE student
SET Major = 'Undecided', Student_Name = 'To'
WHERE Student_ID = 1;

DELETE FROM student
WHERE Student_ID = 1;



SELECT student.Student_Name, student.Major
FROM student
ORDER BY Student_Name DESC;
/* Alphabetical ^ ORDER BY          DESC = descending alphabetical OR   ASC ascending*/

SELECT *
FROM student
ORDER BY Student_ID DESC
LIMIT 2;
/*By major and if same major, then by student id */


SELECT *
FROM student
WHERE major = 'Undecided';
/* only student major undecided all */
/* <> NOT   < > >= <= = */


SELECT *
FROM student
WHERE Student_NAME IN ('To', 'Kot');
/*Choose student names To and Kot only */

