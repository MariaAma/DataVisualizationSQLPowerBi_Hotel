WITH hotels AS (
SELECT * FROM [Project].[dbo].[2018]
UNION
SELECT * FROM [Project].[dbo].[2019]
UNION
SELECT * FROM [Project].[dbo].[2020])


SELECT * FROM hotels
LEFT JOIN [Project].[dbo].[marketsegment]
ON hotels.market_segment = [Project].[dbo].[marketsegment].market_segment
LEFT JOIN [Project].[dbo].[mealcost]
ON [mealcost].meal = hotels.meal