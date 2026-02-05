SELECT TOP (1000) [Student_ID]
      ,[First_Name]
      ,[Middle_Name]
      ,[Last_Name]
      ,[Age]
      ,[Total_Score]
      ,[Gender]
  FROM [Tutorial Database].[dbo].[Class2b]




  SELECT * FROM Class2b

INSERT INTO Class2b VALUES
(101, 'Victoria', 'Chinemerem', 'Agada', 30, 150, 'Female'),
(102, 'Dainah', 'Onyinyechi', 'Ike', 35, 300, 'Female'),
(103, 'John', 'Kola', 'Gabriel', 28, 120, 'Male'),
(104, 'Grace', 'Ifeoma', 'Kanu', 25, 100, 'Female'),
(105, 'David', 'Koyinsola', 'Ibe', 20, 170, 'Male'),
(106, 'Daniel', 'Chidera', 'Doe', 22, 180, 'Male'),
(107, 'Beauty', 'Misturat', 'Garba', 27, 280, 'Female'),
(108, 'Joe', 'Chinonso', 'Igba', 31, 250, 'Male')



SELECT * FROM Class2b
SELECT Total_Score FROM Class2b


SELECT DISTINCT Gender FROM Class2b

SELECT COUNT (Student_ID) AS Total_Student FROM Class2b


SELECT SUM (Total_Score) AS Total_Score_of_Students FROM Class2b

SELECT AVG (Total_Score) AS Average_Score_of_Students FROM Class2b

SELECT MAX (Total_Score) AS Maximum_Score_of_Students FROM Class2b

SELECT MAX (Age) AS Maximum_Age_of_Students FROM Class2b

SELECT Min (Total_Score) AS Minimum_Score_of_Students FROM Class2b

SELECT Min (Age) AS Minimum_Age_of_Students FROM Class2b

SELECT * FROM Class2b


SELECT * FROM Class2b WHERE Total_Score > 200

SELECT * FROM Class2b WHERE First_Name <> 'David'

SELECT * FROM Class2b WHERE Gender = 'Male'

SELECT * FROM Class2b WHERE Age > 30 AND Gender = 'Male'

SELECT * FROM Class2b WHERE Age > 30 OR Gender = 'Male'

SELECT * FROM Class2b WHERE First_Name LIKE 'D%'

SELECT * FROM Class2b WHERE First_Name LIKE '%N%'

SELECT * FROM Class2b WHERE First_Name LIKE '%H'

SELECT * FROM Class2b WHERE Last_Name IS NULL

SELECT * FROM Class2b WHERE Last_Name IS NOT NULL

SELECT * FROM Class2b WHERE First_Name IN ('Victoria', 'Beauty', 'Grace')

SELECT Gender FROM Class2b GROUP BY Gender

SELECT Gender, COUNT (Gender) FROM Class2b GROUP BY Gender

SELECT Gender, COUNT (Gender) AS Gender_Count FROM Class2b GROUP BY Gender

SELECT Gender, COUNT (Gender) FROM Class2b WHERE Age > 20 GROUP BY Gender

SELECT Gender, COUNT (Gender) FROM Class2b WHERE Age > 20 GROUP BY Gender ORDER BY Gender ASC

SELECT Gender, COUNT (Gender) FROM Class2b WHERE Age > 20 GROUP BY Gender ORDER BY Gender DESC

SELECT * FROM Class2b ORDER BY Age DESC
