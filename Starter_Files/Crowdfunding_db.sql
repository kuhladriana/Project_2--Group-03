-- Retrieve All Campaigns
SELECT * FROM campaign;

--Retrieve Campaigns by Category
SELECT * FROM campaign
WHERE category_id = 'cat1';  -- Replace 'cat1' with the desired category ID

--Count the Number of Successful Campaigns
SELECT COUNT(*) AS successful_campaigns
FROM campaign
WHERE outcome = 'successful';

--Get Total Pledged Amount by Category
SELECT c.category_id, SUM(c.pledged) AS total_pledged
FROM campaign c
JOIN category ca ON c.category_id = ca.category_id
GROUP BY c.category_id;

--Retrieve Campaigns Launched in a Specific Year
SELECT * FROM campaign
WHERE EXTRACT(YEAR FROM launch_date) = 2021;  -- Replace 2021 with the desired year

--Get Backer Count for Each Campaign
SELECT cf_id, backers_count
FROM campaign;

--Find Campaigns with Goals Greater Than a Certain Amount
SELECT * FROM campaign
WHERE goal > 10000;  -- Replace 10000 with the desired goal amount

--Retrieve Campaigns with No Pledges
SELECT * FROM campaign
WHERE pledged = 0;

--Join Campaigns with Contacts
SELECT c.cf_id, c.company_name, co.name AS contact_name, co.email
FROM campaign c
JOIN contacts co ON c.contact_id = co.contact_id;

--Get Campaigns by Country
SELECT * FROM campaign
WHERE country = 'US';  

SELECT * FROM campaign
WHERE launch_date::date >= '2021-01-01';

SELECT * FROM campaign
WHERE launch_date::date < '2022-01-01';

SELECT * FROM campaign
WHERE launch_date::date > '2022-01-01';

SELECT * FROM campaign
WHERE EXTRACT(YEAR FROM launch_date) = 2021;