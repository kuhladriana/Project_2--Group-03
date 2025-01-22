SELECT c.country,
	   c.company_name,
	   c.backers_count,
	   c.outcome,
	   c.goal,
	   c.pledged,
       scat.subcategory, 
       cat.category, 
       con.first_name, 
       con.last_name, 
       con.email
FROM 
		campaign c
INNER JOIN 
		contacts con ON c.contact_id = con.contact_id
INNER JOIN 
		category cat ON c.category_id = cat.category_id
INNER JOIN 
		subcategory scat ON c.subcategory_id = scat.subcategory_id
WHERE 
		c.country = 'US' and c.outcome='successful';
		
---------------------------------------------------------------------------------------------------------------------------
SELECT scat.subcategory, 
		count(c.outcome) as "outcome_count" 
FROM 
		campaign c
INNER JOIN 
		subcategory scat ON c.subcategory_id = scat.subcategory_id
GROUP BY 
		scat.subcategory
		
----------------------------------------------------------------------------------------------------------------------------------		
SELECT cat.category, 
		count(c.outcome) as "outcome_count" 
FROM 
		campaign c
INNER JOIN 
		category cat ON c.category_id = cat.category_id
GROUP BY 
		cat.category
		
--4. List the count of 'successful' outcomes for each subcategory, grouped by the count of successful outcomes in descending order
SELECT 
    scat.subcategory, 
    COUNT(CASE WHEN c.outcome = 'successful' THEN 1 END) AS successful_count
FROM 
    campaign c
INNER JOIN 
    subcategory scat ON c.subcategory_id = scat.subcategory_id
GROUP BY 
    scat.subcategory
ORDER BY
	successful_count DESC;

--5. List the count of 'failed' outcomes for each subcategory, grouped by the count of failed outcomes in descending order
SELECT 
    scat.subcategory, 
    COUNT(CASE WHEN c.outcome = 'failed' THEN 1 END) AS failed_count
FROM 
    campaign c
INNER JOIN 
    subcategory scat ON c.subcategory_id = scat.subcategory_id
GROUP BY 
    scat.subcategory
ORDER BY
	failed_count DESC;
	
--6. List the total backers count for each subcategory, ordered by the sum in descending order.

SELECT 
    scat.subcategory, 
    SUM(c.backers_count) AS total_backers
FROM 
    campaign c
INNER JOIN 
    subcategory scat ON c.subcategory_id = scat.subcategory_id
GROUP BY 
    scat.subcategory
ORDER BY 
    total_backers DESC;
