# List SSTables for a Keyspace and Table
sstabledump <keyspace_name> <table_name>

# Print Information about SSTables for a Keyspace and Table
sstablemetadata <keyspace_name> <table_name>

# Run SSTable Scrub for a Keyspace and Table
nodetool scrub <keyspace_name> <table_name>

# Run SSTable Upgrade for a Keyspace and Table
nodetool upgradesstables <keyspace_name> <table_name>

# List All SSTables in the Data Directory
sstablesplit list <data_directory>

# Split SSTables for a Specific Keyspace and Table
sstablesplit split <keyspace_name> <table_name> [--size=<size_in_MB>]

# Compact SSTables for a Specific Keyspace and Table
nodetool compact <keyspace_name> <table_name>

# Clear Data from a Specific SSTable
sstablelevelreset <keyspace_name> <table_name>

# Print Bloom Filter Information for SSTables
sstabledump -e <keyspace_name> <table_name>

# Print Detailed Information about SSTables for a Keyspace and Table
sstablemetadata -d <keyspace_name> <table_name>

# Run a Single SSTable Repair for a Specific Keyspace and Table
nodetool repair -- <keyspace_name> <table_name>

# Run SSTableloader to Bulk Load SSTables
sstableloader <directory_of_sstables>

# Print Tombstone Information for SSTables
sstablemetadata -t <keyspace_name> <table_name>
