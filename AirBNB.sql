use airbnb;
show tables;
select * from booking_details;
select * from listings;

#2. Write a query to show names from Listings table
select name from listings;

#3. Write a query to fetch total listings from the listings table
select Count(*) from listings;

#4. Write a query to fetch total listing_id from the booking_details table
select count(listing_id) from booking_details;

#5. Write a query to fetch host ids from listings table
select host_id from listings;

#6. Write a query to fetch all unique host name from listings table
select distinct(host_name) from listings;

#7. Write a query to show all unique neighbourhood_group from listings table
select distinct(neighbourhood_group) from listings;

#8. Write a query to show all unique neighbourhood from listings table
select distinct(neighbourhood) from listings;

#9. Write a query to fetch unique room_type from listings tables
select distinct(room_type) from listings;

#10. Write a query to show all values of Brooklyn & Manhattan from listings tables
select * from listings where neighbourhood_group in ('Brooklyn',' Manhattan');

#11. Write a query to show maximum price from booking_details table
select max(price) from booking_details ;

#12. Write a query to show minimum price fron booking_details table
select min(price) from booking_details ;

#13. Write a query to show average price from booking_details table
select avg(price) from booking_details ;

#14. Write a query to show minimum value of minimum_nights from booking_details table
select min(minimum_nights) from booking_details ;

#15. Write a query to show maximum value of minimum_nights from booking_details table
select max(minimum_nights) from booking_details ;

#16. Write a query to show average availability_365
select avg(availability_365) from booking_details;

#17. Write a query to show id , availability_365 and all availability_365 values greater than 300
select listing_id, availability_365 from booking_details where availability_365 > 300;

#18. Write a query to show count of id where price is in between 300 to 400
select count(price) from booking_details where price between 300 and 400;

#19. Write a query to show count of id where minimum_nights spend is less than 5
select count(listing_id) from booking_details where minimum_nights < 5;

#20. Write a query to show count where minimum_nights spend is greater than 100
select count(listing_id) from booking_details where minimum_nights > 100;

#21. Write a query to show all data of listings & booking_details
select l.*, b.* from listings l inner join booking_details b on l.id = b.listing_id;

#22. Write a query to show host name and price
select l.host_name,b.price from listings l inner join booking_details b on l.id = b.listing_id;

#23. Write a query to show room_type and price
select l.room_type,b.price from listings l inner join booking_details b on l.id = b.listing_id;

#24. Write a query to show neighbourhood_group & minimum_nightsspend
select l.neighbourhood_group,bd.minimum_nights from listings l inner join booking_details bd on l.id = bd.listing_id;

#25. Write a query to show neighbourhood & availability_365
select l.neighbourhood,bd.availability_365 from listings l inner join booking_details bd on l.id = bd.listing_id;

#26. Write a query to show total price by neighbourhood_group
select l.neighbourhood_group,sum(bd.price) from listings l inner join booking_details bd on l.id = bd.listing_id group by l.neighbourhood_group;

#27. Write a query to show maximum price by neighbourhood_group
select l.neighbourhood_group,max(bd.price) from listings l inner join booking_details bd on l.id = bd.listing_id group by l.neighbourhood_group;

#28. Write a query to show maximum night spend by neighbourhood_group
select l.neighbourhood_group,max(minimum_nights) from listings l inner join booking_details bd on l.id = bd.listing_id group by l.neighbourhood_group;

#29. Write a query to show maximum reviews_per_month spend by neighbourhood
select l.neighbourhood,max(reviews_per_month) from listings l inner join booking_details bd on l.id = bd.listing_id group by l.neighbourhood;

#30. Write a query to show maximum price by room type
select l.room_type,max(price) from listings l inner join booking_details bd on l.id = bd.listing_id group by l.room_type;

#31. Write a query to show average number_of_reviews by room_type
select l.room_type,avg(number_of_reviews) from listings l inner join booking_details bd on l.id = bd.listing_id group by l.room_type;

#32. Write a query to show average price by room type
select l.room_type,avg(price) from listings l inner join booking_details bd on l.id = bd.listing_id group by l.room_type;

#33. Write a query to show average night spend by room type
select l.room_type,avg(minimum_nights) from listings l inner join booking_details bd on l.id = bd.listing_id group by l.room_type;

select * from listings;
select * from booking_details;
#34. Write a query to show average price by room type but average price is less than 100
select l.room_type,avg(price) from listings l inner join booking_details bd on l.id = bd.listing_id group by l.room_type having avg(price)<100;

#35. Write a query to show average night by neighbourhood and average_nights is greater than 5
select l.neighbourhood,avg(minimum_nights) as average_nights from listings l inner join booking_details bd on l.id = bd.listing_id group by l.neighbourhood having avg(minimum_nights)>5;

#36. Write a query to show all data from listings where price is greater than 200 using sub-query.
select * from listings where id in (select listing_id from booking_details where price > 200);

#37. Write a query to show all values from booking_details table where host id is 314941 using sub-query.
select * from booking_details where listing_id in (select id from listings where host_id =314941) ;

#38. Find all pairs of id having the same host id, each pair coming once only.
select * from listings where id = host_id;

#39. Write an sql query to show fetch all records that have the term cozy in name
select * from listings where name like '%cozy%';

#40. Write an sql query to show price, host id, neighbourhood_group of manhattan neighbourhood_group
select bd.price,l.host_id,l.neighbourhood_group from listings l join booking_details bd on l.id = bd.listing_id where l.neighbourhood_group = 'manhattan';

#41. Write a query to show id , host name, neighbourhood and price but only for Upper West Side & Williamsburg neighbourhood, also make sure price is greater than 100
select l.id,l.host_name,l.neighbourhood,bd.price from listings l join booking_details bd on l.id=bd.listing_id where l.neighbourhood in ('Upper West Side','Williamsburg') and bd.price>100;

#42. Write a query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant
select l.id,l.host_name,l.neighbourhood,bd.price from listings l join booking_details bd on l.id=bd.listing_id where l.host_name = 'Elise' and l.neighbourhood = 'Bedford-Stuyvesant';

#43. Write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights
select l.host_name,bd.availability_365,bd.minimum_nights from listings l join booking_details bd on l.id=bd.listing_id where bd.availability_365 >100 and bd.minimum_nights>100;

#44. Write a query to show to fetch id , host_name ,number_of_reviews, and reviews_per_month but show only that records where number of reviews are 500+ and review per month is 5+
select l.id,l.host_name,bd.number_of_reviews ,bd.reviews_per_month  from listings l join booking_details bd on l.id=bd.listing_id where bd.number_of_reviews  >500 and bd.reviews_per_month >5;

#45. Write a query to show neighbourhood_group which have most total number of review
select l.neighbourhood_group,sum(bd.number_of_reviews)from listings l join booking_details bd on l.id=bd.listing_id group by l.neighbourhood_group order by sum(bd.number_of_reviews) desc limit 1;

#46. Write a query to show host name which have most cheaper total price
select l.host_name,sum(bd.price) from listings l inner join booking_details bd on l.id=bd.listing_id group by l.host_name  order by sum(bd.price) asc limit 1;

#47. Write a query to show host name which have most costly total price
select l.host_name,sum(bd.price) from listings l inner join booking_details bd on l.id=bd.listing_id group by l.host_name  order by sum(bd.price) desc limit 1;

#48. Write a query to show host name which have max price using sub-query
select host_name from listings where id in (select listing_id from booking_details where price = (select max(price) from booking_details )); 

#49. Write a query to show neighbourhood_group where price is less than 100
select l.neighbourhood_group , bd.price from listings l inner join booking_details bd on l.id=bd.listing_id where bd.price <100;

#50. Write a query to find max price, average availability_365 for each room type and order in ascending by maximum price.
select l.room_type,max(bd.price),avg(availability_365) from listings l inner join booking_details bd on l.id = bd.listing_id  group by l.room_type order by max(bd.price) asc;
select * from booking_details;
select * from listings;





