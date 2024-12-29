--Olympic dataset 

--1.Find the average number of medals won by each country

select avg(gold_medal) as Average_number_of_gold_medals,avg(silver_medal) as Average_number_of_silver_medals,
avg(bronze_medal) as Average_number_of_bronze_medals,avg(total_medal) as Average_number_of_medals,country 
from olympic_dataset_final
group by country;
#Here I have grouped the average no. of gold,silver,bronze,total medals by country



--2.Display the countries and the number of gold medals they have won in decreasing order

select sum(gold_medal) as Number_of_gold_medals,country 
from olympic_dataset_final
group by country
order by Number_of_gold_medals desc;
#Here I have grouped the total no. of gold medals by country and finaly arranged the total no.of gold medals in descending order.


--3.Display the list of people and the medals they have won in descending order, grouped by their country

select name,sum(gold_medal) as Number_of_gold_medals,sum(silver_medal) as Number_of_silver_medals,
sum(bronze_medal) as Number_of_bronze_medals,sum(total_medal) as Number_of_medals,country
from olympic_dataset_final
group by country
order by Number_of_gold_medals desc,Number_of_silver_medals desc,Number_of_bronze_medals desc,Number_of_medals desc;
#Here I have grouped name of atheletes,sum no. of gold,silver,bronze,total medals by country and finally arranged sum of gold medals,
#sum of silver medals,sum of bronze medals,sum of total medals in descending order.

--4.Display the list of people with the medals they have won according to their their age

select name,sum(gold_medal) as Number_of_gold_medals,sum(silver_medal) as Number_of_silver_medals,
sum(bronze_medal) as Number_of_bronze_medals,sum(total_medal) as Number_of_medals,age
from olympic_dataset_final
group by age;
#Here I have grouped the name of the athletes,sum no. of gold,silver,bronze,total medals by age. 

--5.Which country has won the most number of medals (cumulative)

select country,sum(gold_medal) as Gold_medals,sum(silver_medal) as Silver_medals,
sum(bronze_medal) as Bronze_medals,sum(total_medal) as Total_medals
from olympic_dataset_final
group by country
order by Gold_medals desc,Silver_medals desc,Bronze_medals desc,Total_medals desc;
#Here I have grouped the sum no. of gold,silver,bronze,total medals by country and arranged sum of gold medals,
#sum of silver medals,sum of bronze medals,sum of total medals in descending order which shows that the United States has won the 
#most number of medals