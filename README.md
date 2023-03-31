# Project_2



Contributors: Paola Aleman, Alejandra Espinosa

After the jupyter code was developed and  with transformation process of data, the 4 csv files were created.

These files were used to model the database scheme, to create a diagram using the QuickDBD tool. Based on that, the sql file named "crowdfunding_db_schema.sql" was generated.  

This SQL script let us create the database in PostgresDB.

[paste squema in PG Admin]

Next, the import process for the each of the four tables was applied.
category, subcategory, contacts and campaign.
The order of the import task is important because of the constraints included in the foreigh keys.


Finally, missing part with the SELECT in PostgreDB.

[paste SELECT result]

The SELECT script can be found in SELECT_Statements.sql