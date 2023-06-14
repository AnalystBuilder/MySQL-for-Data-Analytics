# US Household Data Exploration


SELECT *
FROM household_income.ushouseholdincome;

SELECT *
FROM household_income.ushouseholdincome_statistics;

SELECT State_Name, ALand, AWater
FROM household_income.ushouseholdincome;

SELECT State_Name, SUM(ALand), SUM(AWater)
FROM household_income.ushouseholdincome
GROUP BY State_Name
ORDER BY 2;


SELECT State_Name, SUM(ALand), SUM(AWater)
FROM household_income.ushouseholdincome
GROUP BY State_Name
ORDER BY 2 DESC
LIMIT 10;

SELECT State_Name, SUM(ALand), SUM(AWater)
FROM household_income.ushouseholdincome
GROUP BY State_Name
ORDER BY 3 DESC
LIMIT 10;


SELECT *
FROM household_income.ushouseholdincome u
JOIN household_income.ushouseholdincome_statistics us
	ON u.id = us.id;
    

SELECT u.State_Name, County, `Type`, `Primary`, Mean, Median
FROM household_income.ushouseholdincome u
JOIN household_income.ushouseholdincome_statistics us
	ON u.id = us.id;


SELECT u.State_Name, AVG(Mean), AVG(Median)
FROM household_income.ushouseholdincome u
JOIN household_income.ushouseholdincome_statistics us
	ON u.id = us.id
GROUP BY u.State_Name
order by 3;


SELECT u.State_Name, AVG(Mean), AVG(Median)
FROM household_income.ushouseholdincome u
JOIN household_income.ushouseholdincome_statistics us
	ON u.id = us.id
GROUP BY u.State_Name
order by 3;


SELECT `Type`, `Primary`, AVG(Mean), AVG(Median)
FROM household_income.ushouseholdincome u
JOIN household_income.ushouseholdincome_statistics us
	ON u.id = us.id
GROUP BY `Type`, `Primary`
order by 3;


SELECT `Type`, AVG(Mean), AVG(Median)
FROM household_income.ushouseholdincome u
JOIN household_income.ushouseholdincome_statistics us
	ON u.id = us.id
GROUP BY `Type`
order by 3;


SELECT `Type`,COUNT(`Type`), AVG(Mean), AVG(Median)
FROM household_income.ushouseholdincome u
JOIN household_income.ushouseholdincome_statistics us
	ON u.id = us.id
GROUP BY `Type`
order by 4;


SELECT `Type`,COUNT(`Type`), AVG(Mean), AVG(Median)
FROM household_income.ushouseholdincome u
JOIN household_income.ushouseholdincome_statistics us
	ON u.id = us.id
GROUP BY `Type`
HAVING COUNT(`Type`) > 100
order by 4;


SELECT *
FROM household_income.ushouseholdincome u
JOIN household_income.ushouseholdincome_statistics us
	ON u.id = us.id;

SELECT u.State_Name, City, AVG(Mean), AVG(Median)
FROM household_income.ushouseholdincome u
JOIN household_income.ushouseholdincome_statistics us
	ON u.id = us.id
GROUP BY u.State_Name, City
HAVING AVG(Mean) IS NOT NULL
ORDER BY 3 ASC
LIMIT 10;



#Highest
SELECT u.State_Name, City, AVG(Mean), AVG(Median)
FROM household_income.ushouseholdincome u
JOIN household_income.ushouseholdincome_statistics us
	ON u.id = us.id
GROUP BY u.State_Name, City
ORDER BY 3 DESC
LIMIT 10;



