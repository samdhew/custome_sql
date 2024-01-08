-- Check whether the PostgreSQL instance is currently in recovery mode or acting as a primary
select pg_is_in_recovery();
