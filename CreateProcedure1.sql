CREATE PROCEDURE getSameReleaseAndDate
/****** Script for SelectTopNRows command from SSMS  ******/

AS
SELECT TOP (1000) [id]
      ,[name]
      ,[version]
      ,[release_date]
      ,[approved]
      ,[product_manager_id]
  FROM [csun17].[dbo].[product]
  WHERE [csun17].[dbo].[product].release_date = 'Apr 30 2018 12:00AM' AND [csun17].[dbo].[product].name = 'Feeds Implementation'
