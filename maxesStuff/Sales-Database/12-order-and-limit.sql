-- SELECT * FROM sales
-- ORDER BY volume DESC -- automatically lowest to highest, desc makes it highest to lowest
-- LIMIT 10; -- creatrs a limit to how many results are shown based off the above critera


-- SELECT * FROM sales
-- where is_disputed IS FALSE
-- order by volume DESC
-- limit 3;

SELECT * FROM sales
ORDER BY volume DESC
limit 5
offset 3;