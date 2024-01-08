-- Create the pg_cron extension in PostgreSQL
CREATE EXTENSION pg_cron;

-- Show the log of cron job runs
SHOW cron.log_run;

-- Select all rows from the cron.job table
SELECT * FROM cron.job;

-- Select all rows from the cron.job_run_details table
SELECT * FROM cron.job_run_details;

-- Select PostgreSQL settings related to pg_cron
SELECT * FROM pg_settings WHERE name LIKE 'cron.%' ORDER BY name;

-- Select the current date and time
SELECT NOW();

-- Select the current time and timestamp
SELECT CURRENT_TIME, CURRENT_TIMESTAMP;

-- Schedule a manual ANALYZE operation on the specified database using pg_cron
SELECT cron.schedule('[database_name] database manual analyze', '00 02 * * *', 'ANALYZE');

-- Schedule a manual VACUUM operation on the specified database using pg_cron
SELECT cron.schedule('[database_name] database manual vacuum', '30 02 * * *', 'VACUUM(ANALYZE)');

-- Schedule a manual REINDEX operation on the specified database using pg_cron
SELECT cron.schedule('[database_name] database manual index', '00 03 * * 6', 'REINDEX DATABASE [database_name]');

-- Update the schedule of an existing cron job
UPDATE cron.job SET schedule = '00 01 * * *' WHERE jobid = 1;

-- Update the database associated with an existing cron job
UPDATE cron.job SET database = '[database_name]' WHERE jobid = 1;

-- Schedule a manual purge operation for pg_cron job run details older than 7 days
SELECT cron.schedule('pg_cron manual purge','00 01 * * *', $$DELETE 
    FROM cron.job_run_details 
    WHERE end_time < now() - interval '7 days'$$);
