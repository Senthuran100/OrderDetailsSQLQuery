# SQLQuery Playground
#### OrderDetailsSQLQuery
Mysql queries to map the customer, product and order details in database.
(queries.sql)[https://github.com/Senthuran100/SQLQuery/blob/main/queries.sql]
<p align="center">
  <img src="https://github.com/Senthuran100/OrderDetailsSQLQuery/blob/main/ERDiagram.png" width="450" title="Entity Diagram for Order Details">
</p>


 #### Hierarchical Data of Electronics items.

(hierarchical-query.sql)[https://github.com/Senthuran100/SQLQuery/blob/main/hierarchical-query.sql]

id|title               |path                            |
--+--------------------+--------------------------------+
 1|Electronics         |Electronics                     |
 2|Laptops & PC        |Electronics>Laptops & PC        |
 3|PC                  |Electronics>Laptops & PC>PC     |
 4|Cameras & photo     |Electronics>Cameras & photo     |
 6|Phones & Accessories|Electronics>Phones & Accessories|