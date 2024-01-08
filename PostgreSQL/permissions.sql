-- Generate ALTER TABLE statements to change ownership of tables in a specific schema
SELECT 'ALTER TABLE [schema_name].' || t.tablename || ' OWNER TO [username];'
FROM pg_tables t
WHERE t.schemaname = '[schema_name]';

-- Generate ALTER DOMAIN statements to change ownership of domains in a specific schema
SELECT 'ALTER DOMAIN [schema_name].' || typname || ' OWNER TO [username];'
FROM pg_catalog.pg_type
JOIN pg_catalog.pg_namespace ON pg_namespace.oid = pg_type.typnamespace
WHERE typtype = 'd' AND nspname = '[schema_name]';

-- Generate ALTER FUNCTION statements to change ownership of functions in a specific schema
SELECT 'ALTER FUNCTION [schema_name].' || p.proname || ' OWNER TO [username];'
FROM pg_proc p
LEFT JOIN pg_namespace n ON p.pronamespace = n.oid
WHERE p.prokind ='f' AND n.nspname = '[schema_name]'
ORDER BY p.proname;

-- Generate ALTER PROCEDURE statements to change ownership of procedures in a specific schema
SELECT 'ALTER PROCEDURE [schema_name].' || p.proname || ' OWNER TO [username];'
FROM pg_proc p
LEFT JOIN pg_namespace n ON p.pronamespace = n.oid
WHERE p.prokind ='p' AND n.nspname = '[schema_name]'
ORDER BY p.proname;

-- Generate ALTER TYPE statements to change ownership of types in a specific schema
SELECT 'ALTER TYPE [schema_name].' || t.typname || ' OWNER TO [username];'
FROM pg_type t
INNER JOIN pg_catalog.pg_namespace n ON n.oid = t.typnamespace
WHERE (t.typrelid = 0 OR (SELECT c.relkind = 'c' FROM pg_catalog.pg_class c WHERE c.oid = t.typrelid))
AND NOT EXISTS(SELECT 1 FROM pg_catalog.pg_type el WHERE el.oid = t.typelem AND el.typarray = t.oid)
AND n.nspname = '[schema_name]';

-- Generate ALTER SEQUENCE statements to change ownership of sequences in a specific schema
SELECT 'ALTER SEQUENCE [schema_name].' || sequence_name || ' OWNER TO [username];'
FROM information_schema.sequences WHERE sequence_schema = '[schema_name]';

-- Grant privileges to a user on a PostgreSQL database
GRANT CONNECT ON DATABASE [database_name] TO [username];
GRANT USAGE ON SCHEMA [schema_name] TO [username];
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA [schema_name] TO [username];
GRANT ALL ON ALL SEQUENCES IN SCHEMA [schema_name] TO [username];
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA [schema_name] TO [username];
GRANT EXECUTE ON ALL PROCEDURES IN SCHEMA [schema_name] TO [username];
