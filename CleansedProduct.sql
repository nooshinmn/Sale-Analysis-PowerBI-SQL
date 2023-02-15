/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
p.[ProductKey],
p.[ProductAlternateKey] AS ProductItemCode,
--      ,[ProductSubcategoryKey]
--      ,[WeightUnitMeasureCode]
--      ,[SizeUnitMeasureCode]
p.[EnglishProductName] AS [ProductName],
ps.EnglishProductSubcategoryName AS [Sub Category],
pc.EnglishProductCategoryName AS [Product Category],
--      ,[SpanishProductName]
--      ,[FrenchProductName]
--      ,[StandardCost]
--      ,[FinishedGoodsFlag]
p.[Color] AS [Product Color],
--      ,[SafetyStockLevel]
--      ,[ReorderPoint]
--      ,[ListPrice]
p.[Size] AS [Product Size],
--      ,[SizeRange]
--      ,[Weight]
--      ,[DaysToManufacture]
p.[ProductLine] AS [Product Line],
--      ,[DealerPrice]
--      ,[Class]
--      ,[Style]
p.[ModelName] AS [Product Model Name],
--      ,[LargePhoto]
p.[EnglishDescription] AS [Product Description],
--      ,[FrenchDescription]
--      ,[ChineseDescription]
--      ,[ArabicDescription]
--      ,[HebrewDescription]
--      ,[ThaiDescription]
--      ,[GermanDescription]
--      ,[JapaneseDescription]
--      ,[TurkishDescription]
--      ,[StartDate]
--      ,[EndDate]
   ISNULL  (p.Status, 'Outdated') AS [Product Status] 
FROM 
   [AdventureWorksDW2019].[dbo].[DimProduct] AS p
   LEFT JOIN [AdventureWorksDW2019].dbo.DimProductSubCategory AS ps ON ps.ProductSubCategoryKey = p.ProductSubCategoryKey
   LEFT JOIN [AdventureWorksDW2019].dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  order by
  p.ProductKey asc