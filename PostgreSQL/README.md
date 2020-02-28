# PostgreSQL - load the data into your own instance of PotgreSQL database

This document specifies the contents of the hat_project/PostgreSQL folder.

- Folder ```PostgreSQL_load``` contains load.sql script that loads all the .txt files into a Potgres database (and creates a local version of the database on your computer). You have to have PostgreSQL installed on your computer (version 9.3 minimum), some kind of frontend, e.g. PgAdmin 4, and have admin rights. Some working knowledge of SQL is recommended.

- Folder ```SQL_queries_export``` contains scripts of specialised queries exported from PotgreSQL, mostly dealing with origin of people based on their personal names and intermarriages between people of Thracian and non-Thracian origin. Scripts can be used (and modified) to query the data in the PostgreSQL database.
