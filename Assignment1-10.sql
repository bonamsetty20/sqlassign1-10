--create database OurExerciseDb
create database OurExerciseDb
CREATE DATABASE OurExerciseDb1
ON PRIMARY
(
    NAME = OurExerciseDb_Data,
    FILENAME = 'D:\Phase2\Day1-10\Assinment1\OurExerciseDb_Data.mdf',
    SIZE = 24MB,
    FILEGROWTH = 8MB
)
LOG ON
(
    NAME = OurExerciseDb_Log,
    FILENAME = 'D:\Phase2\Day1-10\Assinment1\OurExerciseDb_Log.ldf'
)
COLLATE SQL_Latin1_General_CP1_CI_AS
USE OurExerciseDb1;
---- Create the Student Registrations table
CREATE TABLE StudentRegistrations1 (
    StudentId INT,
    CourseCode NVARCHAR(50),
    RegistrationDate DATE,
    PRIMARY KEY (StudentId, CourseCode)
);
---Insert sample records
INSERT INTO StudentRegistrations1 VALUES (1, 'CSE101', '2023-08-01')
INSERT INTO StudentRegistrations1 VALUES (2, 'MAT202', '2023-08-02')
INSERT INTO StudentRegistrations1 VALUES (3, 'BIO103', '2023-08-03')
INSERT INTO StudentRegistrations1 VALUES (4, 'CHE201', '2023-08-02')
--Verify data insertion
SELECT * FROM StudentRegistrations1;
