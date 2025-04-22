# 🎓 Student Management System – SQL Project

This project is a mini Student Management System designed to provide hands-on experience with SQL database creation, data manipulation, and analysis. It demonstrates essential SQL operations including creating tables, inserting data, performing queries, aggregation, filtering, and updating records using a structured dataset of student performance.

---

## 📌 Key Features

- 📁 Database and table design with appropriate data types and constraints
- 📊 Subject-wise and gender-based performance analysis using aggregate functions
- 🥇 Identification of top-performing students
- 📚 Grade distribution insights
- ✍️ Update and correction operations to simulate real-world data scenarios

---

## 📂 Project Structure

- `student_management.sql` – All SQL queries from DB creation to analysis
- `README.md` – Full documentation with query explanations and insights

---

## 🛠 Technologies Used

- SQL (MySQL syntax)
- MySQL Workbench

---

## 🖼 Preview

![Student Management Dashboard](preview.png)

> *Sample output screenshot: Use MySQL Workbench or any SQL interface to view query results like this.*

---

## 🚀 How to Use

1. Clone the repository
2. Open `student_management.sql` in MySQL Workbench
3. Run queries step-by-step as per the README
4. Analyze results and understand insights

---

## 🔍 Tasks & SQL Queries

### 1. Display all students
```sql
SELECT * FROM Students;
```
**Purpose:** View the complete dataset.

### 2. Calculate average scores for each subject
```sql
SELECT 
  AVG(MathScore) AS AvgMath,
  AVG(ScienceScore) AS AvgScience,
  AVG(EnglishScore) AS AvgEnglish
FROM Students;
```
**Purpose:** Analyze subject-wise performance.

### 3. Find the top performer (highest total score)
```sql
SELECT *, (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;
```
**Purpose:** Identify best-performing student across all subjects.

### 4. Count students by grade
```sql
SELECT Grade, COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade;
```
**Purpose:** Understand grade distribution.

### 5. Compare average scores by gender
```sql
SELECT Gender,
  AVG(MathScore) AS AvgMath,
  AVG(ScienceScore) AS AvgScience,
  AVG(EnglishScore) AS AvgEnglish
FROM Students
GROUP BY Gender;
```
**Purpose:** Check academic performance differences by gender.

### 6. Students with Math score above 80
```sql
SELECT * FROM Students
WHERE MathScore > 80;
```
**Purpose:** Highlight high achievers in Math.

### 7. Update grade of a specific student
```sql
UPDATE Students
SET Grade = 'B'
WHERE StudentID = 4;
```
**Purpose:** Reflect a change/correction in a student’s grade.

---

## 📊 Observations & Insights

- **Top Performer:** Frank has the highest total score (280).
- **Subject Strength:** Science and English show higher average scores than Math.
- **Gender Performance:** Female students have slightly higher scores on average.
- **Grade Distribution:** Most students fall under grade A and B.

---

## 📌 Learning Outcomes

- Strong foundation in SQL querying
- Ability to work with structured data for reporting
- Understanding of real-world data manipulation scenarios





