CREATE DATABASE StudentManagement;

USE StudentManagement;


CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(1), -- 'M' or 'F'
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);


INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES 
('Alice', 'F', 16, 'A', 85, 90, 88),
('Bob', 'M', 17, 'B', 78, 75, 80),
('Clara', 'F', 16, 'A', 92, 88, 91),
('David', 'M', 18, 'C', 65, 70, 68),
('Eva', 'F', 17, 'B', 88, 85, 87),
('Frank', 'M', 16, 'A', 95, 93, 92),
('Grace', 'F', 17, 'C', 70, 65, 72),
('Henry', 'M', 18, 'B', 82, 80, 84),
('Ivy', 'F', 16, 'A', 89, 91, 90),
('Jack', 'M', 17, 'C', 60, 58, 65);


SELECT * FROM Students;


SELECT 
    AVG(MathScore) AS AvgMath,
    AVG(ScienceScore) AS AvgScience,
    AVG(EnglishScore) AS AvgEnglish
FROM Students;


SELECT *, (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;


SELECT Grade, COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade;


SELECT Gender,
    AVG(MathScore) AS AvgMath,
    AVG(ScienceScore) AS AvgScience,
    AVG(EnglishScore) AS AvgEnglish
FROM Students
GROUP BY Gender;


SELECT * 
FROM Students
WHERE MathScore > 80;


UPDATE Students
SET Grade = 'B'
WHERE StudentID = 4;
