-- Show a list of available databases
SHOW DATABASES;

-- Show MySQL server version-related variables
SHOW VARIABLES LIKE 'version%';

-- Calculate and display the size of each database in bytes and GiB
SELECT 
    table_schema 'Database Name',
    SUM(data_length + index_length) 'Size in Bytes',
    ROUND(SUM(data_length + index_length) / 1024 / 1024 / 1024, 2) 'Size in GiB'
FROM information_schema.tables 
GROUP BY table_schema;

-- Retrieve foreign key relationships for a specific database (e.g., 'test_database')
SELECT 
  TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
FROM
  INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
  REFERENCED_TABLE_SCHEMA = 'test_database';

-- Create a MySQL user named 'user1' with the password 'password@123'
CREATE USER 'user1' IDENTIFIED BY 'password@123';

-- Grant specific privileges to 'user1' on the 'test_database' schema
GRANT SELECT, INSERT, UPDATE, DELETE ON test_database.* TO 'user1';

-- Grant all privileges to 'user1' on the 'test_database' schema for any host
GRANT ALL PRIVILEGES ON test_database.* TO 'user1'@'%';

-- Display the granted privileges for 'user1' on any host
SHOW GRANTS FOR 'user1'@'%';
