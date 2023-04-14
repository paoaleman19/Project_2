# Project_2


## Contributors
Paola Aleman, Alejandra Espinosa


## Project Details

## Objective
The objective in this challenge was extract, transform, and load (ETL) process, which consists of extracting data from datasets, transforming the data, and then loading the transformed data into a database using python and pandas.

## Explain Changes
After the jupyter code was developed and  with transformation process of data, the 4 csv files were created.

These files were used to model the database scheme, to create a diagram using the QuickDBD tool. Based on that, the sql file named "crowdfunding_db_schema.sql" was generated.  

This SQL script let us create the database in PostgresDB.

![Squema](https://user-images.githubusercontent.com/118868483/229020506-3616db69-74b5-44b9-bbf9-950f8730f281.png)


Next, the import process for the each of the four tables was applied.
category, subcategory, contacts and campaign.
The order of the import task is important because of the constraints included in the foreigh keys.


Finally, missing part with the SELECT in PostgreDB.

![SELECT statement](https://user-images.githubusercontent.com/118868483/229020467-a8de08af-c4e9-46a3-826a-88cc7fa100c8.png)



The SELECT script can be found in SELECT_Statements.sql

## Conclusion
Using the resources files given in an xlsx format, which were not very user friendly without a readable and good structure (most data was in one single cell), we were able to transform and create tables(4) that were more user friendly causing the reader to be able to analyze and understand relationships between data more easily. We also created a DBD Diagram which let us identify the primary and foreign keys in each table. 