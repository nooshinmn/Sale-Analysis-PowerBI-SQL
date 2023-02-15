/****** Script for SelectTopNRows command from SSMS  ******/
SELECT
 c.customerkey AS CustomerKey,
--      ,[GeographyKey]
--      ,[CustomerAlternateKey]
--      ,[Title]
c.firstname AS [FirstName],
--      ,[MiddleName]
c.lastname AS [LastName],
c.firstname + ' '+ c.lastname AS [Full Name],
--      ,[NameStyle]
--      ,[BirthDate]
--      ,[MaritalStatus]
--      ,[Suffix]
CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
--      ,[EmailAddress]
--      ,[YearlyIncome]
--      ,[TotalChildren]
--      ,[NumberChildrenAtHome]
--      ,[EnglishEducation]
--      ,[SpanishEducation]
--      ,[FrenchEducation]
--      ,[EnglishOccupation]
--      ,[SpanishOccupation]
--      ,[FrenchOccupation]
--      ,[HouseOwnerFlag]
--      ,[NumberCarsOwned]
--      ,[AddressLine1]
--      ,[AddressLine2]
--      ,[Phone]
c.datefirstpurchase AS DateFirstPurchase,

--      ,[CommuteDistance]
g.city AS [Customer City] -- Joined in customer city from geography tabel

FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN [AdventureWorksDW2019].dbo.DimGeography AS g ON g.geographykey=c.geographykey
ORDER BY
  CustomerKey ASC -- Ordered by customerkey