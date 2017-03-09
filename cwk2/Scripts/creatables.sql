SET TERMOUT ON
PROMPT Building demonstration tables.  Please wait.
--SET TERMOUT OFF

DROP TABLE Course;
DROP TABLE Student;
DROP TABLE Subject;
DROP TABLE ExamQuestions;
DROP TABLE Coursework;
DROP TABLE Department;
DROP TABLE TeachingStaff;
DROP TABLE Exam;
DROP TABLE StaffSubject;
DROP TABLE Enrollment;
DROP TABLE CourseworkGrades;
DROP TABLE ExamGrades;



CREATE TABLE Course (
  Id NUMBER(4) NOT NULL PRIMARY KEY,
  CourseName VARCHAR(50),
  DepartmentId NUMBER(3)
);

CREATE TABLE Student (
  Id NUMBER(12),
  FirstName VARCHAR(12),
  LastName VARCHAR(12),
  EnrollmentDate DATE,
  CourseId NUMBER(4)
);

CREATE TABLE Subject (
  Id NUMBER(3),
  DepartmentId NUMBER(3),
  SubjectName VARCHAR(50)
);

CREATE TABLE ExamQuestions (
  Id NUMBER(5),
  ExamId NUMBER(4),
  AuthorId NUMBER(12),
  MaxScore NUMBER(3)
);

CREATE TABLE Coursework (
  Id NUMBER(4),
  SubjectId NUMBER(3),
  AuthorId NUMBER(12),
  MaxScore NUMBER(3),
  DueDate DATE
);

CREATE TABLE Department (
  Id NUMBER(3),
  DepartmentName VARCHAR(50)
);

CREATE TABLE TeachingStaff (
  Id NUMBER(12),
  DepartmentId NUMBER(3),
  FirstName VARCHAR(20),
  LastName VARCHAR(20)
);

CREATE TABLE Exam (
  Id NUMBER(4),
  SubjectId NUMBER(3),
  ExamDate DATE,
  IsResit NUMBER(1,0) 
);

CREATE TABLE StaffSubject (
  Id NUMBER(4),
  StaffId NUMBER(12),
  SubjectId NUMBER(3)
);

CREATE TABLE Enrollment (
  Id NUMBER(12), 
  StudentId NUMBER(12),
  SubjectId NUMBER(3),
  Semester NUMBER(1),
  YearStart DATE
);

CREATE TABLE CourseworkGrades (
  Id NUMBER(12),
  StudentId NUMBER(12),
  CourseworkId NUMBER(4),
  GraderId NUMBER(12),
  Score NUMBER(3)
);

CREATE TABLE ExamGrades (
  Id NUMBER(12),
  StudentId NUMBER(12),
  ExamQuestionId NUMBER(4),
  GraderId NUMBER(12),
  Score NUMBER(3)
);




