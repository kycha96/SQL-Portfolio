CREATE DATABASE video_game;

--Imported csv file into MySQL workbench

SELECT * FROM video_game_sales;

-- Top 10 Best-Selling Video Games in the World
SELECT Name, Platform, Year, Genre, Publisher, Global_Sales FROM video_game_sales
ORDER BY Global_Sales DESC
LIMIT 10;

-- Top 10 Best-Selling Video Games in North America
SELECT Name, Platform, Year, Genre, Publisher, NA_Sales FROM video_game_sales
ORDER BY NA_Sales DESC
LIMIT 10;

-- Top 10 Best-Selling Video Games in Europe
SELECT Name, Platform, Year, Genre, Publisher, EU_Sales FROM video_game_sales
ORDER BY EU_Sales DESC
LIMIT 10;

-- Top 10 Best-Selling Video Games in Japan
SELECT Name, Platform, Year, Genre, Publisher, JP_Sales FROM video_game_sales
ORDER BY JP_Sales DESC
LIMIT 10;

-- Top 10 Best-Selling Video Games in Other Countries
SELECT Name, Platform, Year, Genre, Publisher, Other_Sales FROM video_game_sales
ORDER BY Other_Sales DESC
LIMIT 10;

-- Total Sales For Each Region
SELECT SUM(NA_Sales) AS Total_NA_Sales, SUM(EU_Sales) AS Total_EU_Sales, SUM(Other_Sales) AS Total_Other_Sales FROM video_game_sales;

-- Top 5 Most Popular Video Game Platform
SELECT Platform, SUM(NA_Sales) AS Total_NA_Sales, SUM(EU_Sales) AS Total_EU_Sales, SUM(Other_Sales) AS Total_Other_Sales, SUM(Global_Sales) AS Total_Global_Sales FROM video_game_sales
GROUP BY Platform
ORDER BY Total_Global_Sales DESC
LIMIT 5;

-- Top 10 Most Popular Video Game Genre
SELECT Genre, SUM(NA_Sales) AS Total_NA_Sales, SUM(EU_Sales) AS Total_EU_Sales, SUM(Other_Sales) AS Total_Other_Sales, SUM(Global_Sales) AS Total_Global_Sales FROM video_game_sales
GROUP BY Genre
ORDER BY Total_Global_Sales DESC
LIMIT 10;

-- Top 10 Most Popular Video Game Genre in North America
SELECT Genre, SUM(NA_Sales) AS Total_NA_Sales FROM video_game_sales
GROUP BY Genre
ORDER BY Total_NA_Sales DESC
LIMIT 10;

-- Top 10 Most Popular Video Game Genre in Europe
SELECT Genre, SUM(EU_Sales) AS Total_EU_Sales FROM video_game_sales
GROUP BY Genre
ORDER BY Total_EU_Sales DESC
LIMIT 10;

-- Top 10 Most Popular Video Game Genre in Japan
SELECT Genre, SUM(JP_Sales) AS Total_JP_Sales FROM video_game_sales
GROUP BY Genre
ORDER BY Total_JP_Sales DESC
LIMIT 10;

-- Top 10 Most Popular Video Game Genre in Other Countries
SELECT Genre, SUM(Other_Sales) AS Total_Other_Sales FROM video_game_sales
GROUP BY Genre
ORDER BY Total_Other_Sales DESC
LIMIT 10;

-- Total Sales by Publisher
SELECT Publisher, SUM(NA_Sales) AS Total_NA_Sales, SUM(EU_Sales) AS Total_EU_Sales, SUM(Other_Sales) AS Total_Other_Sales, SUM(Global_Sales) AS Total_Global_Sales FROM video_game_sales
GROUP BY Publisher
ORDER BY Total_Global_Sales DESC;

-- Number of Games Released and Total Sales for Each Year
SELECT Year, COUNT(Year) AS Number_Of_Games, SUM(NA_Sales) AS Total_NA_Sales, SUM(EU_Sales) AS Total_EU_Sales, SUM(Other_Sales) AS Total_Other_Sales, SUM(Global_Sales) AS Total_Global_Sales FROM video_game_sales
GROUP BY Year
ORDER BY Year;
