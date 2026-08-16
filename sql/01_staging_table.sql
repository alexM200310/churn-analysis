
select Gender,
	count(Gender) 													as total_count,
	round(count(Gender) / (select count(*) from customer_data), 2) 	as percentage
from customer_data
group by Gender;

/****************************************************************/

select Contract,
	count(Contract) 													as total_count,
	round(count(Contract) / (select count(*) from customer_data), 2) 	as percentage
from customer_data
group by Contract;

/****************************************************************/

select Customer_Status, 
	count(Customer_Status) 			as total_count,
    round(sum(Total_Revenue), 2) 	as total_revenue,
    round(sum(Total_Revenue) / (select sum(Total_Revenue) from customer_data), 2)	as rev_percentage
from customer_data
group by Customer_Status;

/****************************************************************/

select State, 
	count(State) 			as total_count,
    round(count(State) * 100.0 / (select count(*) from customer_data), 2)	as percentage
from customer_data
group by State
order by percentage desc;

/****************************************************************/

select distinct Internet_Type
from customer_data
