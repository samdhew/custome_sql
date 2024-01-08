# Check Cluster Status
nodetool status

# List Available Keyspaces
nodetool describekeyspaces

# List Column Families in a Keyspace
nodetool describe <keyspace_name>

# Compact a Keyspace or Specific Column Family
nodetool compact [<keyspace_name> [table_name]]

# Repair a Node
nodetool repair

# List Token Range Ownership
nodetool ring

# Flush a Keyspace or Column Family
nodetool flush [<keyspace_name> [table_name]]

# Backup a Keyspace
nodetool snapshot [<keyspace_name> -t <snapshot_name>]

# Restore from Snapshot
nodetool clearsnapshot [<keyspace_name> -t <snapshot_name>]

# Compact and Repair a Keyspace
nodetool compact -- <keyspace_name>

# Truncate a Table
nodetool truncate <keyspace_name> <table_name>

# List Compaction Tasks
nodetool compactionstats

# Disable/Enable Compaction
nodetool disableautocompaction [<keyspace_name> [table_name]]
nodetool enableautocompaction [<keyspace_name> [table_name]]

# View Running Compactions
nodetool compactionstats

# Enable/Disable Gossip
nodetool enablegossip
nodetool disablegossip

# Force Remove a Dead Node
nodetool removenode <dead_node_id>

# Change Compaction Throughput
nodetool setcompactionthroughput <value_in_MB_per_sec>
