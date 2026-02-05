CREATE TABLE T_400L
(Student_ID INT,
First_Name VARCHAR (50),
Middle_Name VARCHAR (50),
Last_Name VARCHAR (50),
Age INT,
Total_Score INT,
Gender VARCHAR (50) )

SELECT * FROM T_400L

INSERT INTO T_400L VALUES
(1001, 'Utu', 'Oba', 'Uje', 20, 65, 'Male'),
(1002, 'Sharon', 'Dede', 'Chukwu', 24, 50, 'Female'),
(1003, 'Mide', 'Moti', 'Obi', 21, 55, 'Female'),
(1004, 'Bright', 'Morgan', 'Mba', 23, 45, 'Male'),
(1005, 'Praise', 'Angel', 'Ibe', 27, 67, 'Female'),
(1006, 'Jay', 'Kola', 'Opeyemi', 22, 61, 'Male'),
(1007, 'Victor', 'Segun', 'Femi', 26, 69, 'Male'),
(1008, 'David', 'Chidi', 'Mole', 20, 43, 'Male'),
(1009, 'Daniel', 'Hurum', 'Obia', 25, 40, 'Male'),
(1010, 'Ella', 'Oyowo', 'Chibobo', 23, 56,'Female')


SELECT SUM (Total_Score) AS Total_Score_of_Students FROM T_400L

SELECT AVG (Total_Score) AS Average_Score_of_Students FROM T_400L

SELECT MAX (Total_Score) AS Maximum_Score_of_Students FROM T_400L

SELECT MAX (Age) AS Maximum_Age_of_Students FROM T_400L

SELECT Min (Total_Score) AS Minimum_Score_of_Students FROM T_400L

SELECT Min (Age) AS Minimum_Age_of_Students FROM T_400L

SELECT * FROM T_400L WHERE Total_Score > 200

SELECT * FROM T_400L WHERE First_Name <> 'David'

SELECT * FROM T_400L WHERE Gender = 'Male'

SELECT * FROM T_400L WHERE Age < 30 AND Gender = 'Male'

SELECT * FROM T_400L WHERE Age > 30 OR Gender = 'Male'

SELECT * FROM T_400L WHERE First_Name LIKE 'D%'

SELECT * FROM T_400L WHERE First_Name LIKE '%N%'

SELECT * FROM T_400L WHERE First_Name LIKE '%E'

SELECT * FROM T_400L WHERE Last_Name IS NULL

SELECT * FROM T_400L WHERE Last_Name IS NOT NULL

SELECT * FROM T_400L WHERE First_Name IN ('Mide', 'David', 'Ella')

SELECT Gender FROM T_400L GROUP BY Gender

SELECT Gender, COUNT (Gender) FROM T_400L GROUP BY Gender

SELECT Gender, COUNT (Gender) AS Gender_Count FROM T_400L GROUP BY Gender

SELECT Gender, COUNT (Gender) FROM T_400L WHERE Age > 20 GROUP BY Gender

SELECT Gender, COUNT (Gender) FROM T_400L WHERE Age > 20 GROUP BY Gender ORDER BY Gender ASC

SELECT Gender, COUNT (Gender) FROM T_400L WHERE Age > 20 GROUP BY Gender ORDER BY Gender DESC

SELECT * FROM T_400L ORDER BY Age DESC

