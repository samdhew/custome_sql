-- Connect to a Cassandra Cluster
cqlsh -u <username> -p <password> <hostname> <port>

-- Show Available Keyspaces
DESCRIBE KEYSPACES;

-- Use a Specific Keyspace
USE <keyspace_name>;

-- Show Tables in the Current Keyspace
DESCRIBE TABLES;

-- Describe the Schema of a Table
DESCRIBE TABLE <table_name>;

-- Show the Contents of a Table
SELECT * FROM <table_name>;

-- Insert Data into a Table
INSERT INTO <table_name> (<column1>, <column2>) VALUES (<value1>, <value2>);

-- Update Data in a Table
UPDATE <table_name> SET <column1> = <new_value> WHERE <condition>;

-- Delete Data from a Table
DELETE FROM <table_name> WHERE <condition>;

-- Create a Keyspace
CREATE KEYSPACE <keyspace_name> WITH replication = {'class': '<replication_class>', 'replication_factor': <factor>};

-- Create a Table
CREATE TABLE <table_name> (
    <column1> <data_type1>,
    <column2> <data_type2>,
    PRIMARY KEY (<primary_key_column>)
);

-- Add an Index to a Column
CREATE INDEX <index_name> ON <table_name> (<column_name>);

-- Describe Materialized Views
DESCRIBE MATERIALIZED VIEWS;

-- Drop a Keyspace
DROP KEYSPACE <keyspace_name>;

-- Drop a Table
DROP TABLE <table_name>;

-- Exit cqlsh
EXIT;
