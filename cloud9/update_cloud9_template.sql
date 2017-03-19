/* 
    Set of SQL commands to execute for Rails to connect to Postgres on Cloud9 
    Long term goal is to make this an automated script, but for now this is a
    listing of the SQL commands needed to install a new template.
    Mark Nyon 03/19/2017
*/ 

sudo sudo -u postgres psql

postgres# UPDATE pg_database SET datistemplate = FALSE WHERE datname = 'template1';

postgres# DROP DATABASE template1;

postgres# CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UNICODE';

postgres# UPDATE pg_database SET datistemplate = TRUE WHERE datname = 'template1';

postgres# \c template1

postgres# VACUUM FREEZE;

postgres# \q 
