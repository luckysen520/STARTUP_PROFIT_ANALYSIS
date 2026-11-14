use project_profit_analysis;
select*from startup;
SELECT
  COUNT(*) AS total_rows,
  SUM(`RD_Spend` IS NULL) AS missing_rd,
  SUM(Administration IS NULL) AS missing_admin,
  SUM(`Marketing_Spend` IS NULL) AS missing_marketing,
  SUM(Profit IS NULL) AS missing_profit
FROM startup;

SELECT *
FROM startup
WHERE ABS(`RD_Spend` - 21892.92) < 0.01
  AND ABS(Administration - 81910.77) < 0.01
  AND ABS(`Marketing_Spend` - 164270.70) < 0.01;


SELECT
  COUNT(*) AS total_rows,
  SUM(`RD_Spend` IS NULL) AS missing_rd,
  SUM(Administration IS NULL) AS missing_admin,
  SUM(`Marketing_Spend` IS NULL) AS missing_marketing,
  SUM(Profit IS NULL) AS missing_profit
FROM startup;

SELECT
  COUNT(*) AS duplicate_groups
FROM (
  SELECT `RD_Spend`, Administration, `Marketing_Spend`, Profit
  FROM startup
  GROUP BY `RD_Spend`, Administration, `Marketing_Spend`, Profit
  HAVING COUNT(*) > 1
) AS duplicates;


SELECT COUNT(*) AS total_rows
FROM startup;

SELECT `RD_Spend`, Administration, `Marketing_Spend`, Profit
FROM startup;

SELECT State, `RD_Spend`, Administration, `Marketing_Spend`, Profit
FROM startup;
