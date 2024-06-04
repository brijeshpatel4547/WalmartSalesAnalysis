# WalmartSalesAnalysis

**Purpose of Project:** 
To gain insights into the sales data of Walmart using SQL.

**Data Information:** 
The dataset contains sales transactions from a three different branches of Walmart, respectively located in Mandalay, Yangon and Naypyitaw. The data contains 17 columns and 1000 rows.

**Schema:**
Walmart_DA_Project=# \d+ walmart_sales
                                                      Table "public.walmart_sales"
-------------------------+------------------------+-----------+----------+---------+----------+-------------+--------------+-------------                                       
         Column          |          Type          | Collation | Nullable | Default | Storage  | Compression | Stats target | Description
-------------------------+------------------------+-----------+----------+---------+----------+-------------+--------------+-------------
 invoice_id              | character varying(30)  |           | not null |         | extended |             |              |
 branch                  | character varying(5)   |           | not null |         | extended |             |              |
 city                    | character varying(30)  |           | not null |         | extended |             |              |
 customer_type           | character varying(30)  |           | not null |         | extended |             |              |
 gender                  | character varying(10)  |           | not null |         | extended |             |              |
 product_line            | character varying(100) |           | not null |         | extended |             |              |
 unit_price              | double precision       |           | not null |         | plain    |             |              |
 quantity                | integer                |           | not null |         | plain    |             |              |
 value_added_tax         | double precision       |           | not null |         | plain    |             |              |
 total                   | double precision       |           | not null |         | plain    |             |              |
 date                    | date                   |           | not null |         | plain    |             |              |
 time                    | time without time zone |           | not null |         | plain    |             |              |
 payment_method          | character varying(15)  |           | not null |         | extended |             |              |
 cost_of_goods_sold      | double precision       |           | not null |         | plain    |             |              |
 gross_margin_percentage | double precision       |           |          |         | plain    |             |              |
 gross_income            | double precision       |           | not null |         | plain    |             |              |
 rating                  | double precision       |           |          |         | plain    |             |              |
 part_of_day             | character varying(30)  |           |          |         | extended |             |              |
 day_name                | character varying(30)  |           |          |         | extended |             |              |
 month_name              | character varying(30)  |           |          |         | extended |             |              |
Indexes:
    "Walmart_Sales_pkey" PRIMARY KEY, btree (invoice_id)

