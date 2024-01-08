# Check the Status of Each Node in the Cluster
nodetool status

# View Information About the Cluster
nodetool info

# Display the Status of Gossip
nodetool gossipinfo

# Display Information About Cluster Compactions
nodetool compactionstats

# View the Size of SSTables on Disk
nodetool tablestats

# Show the Stream Plan for a Ranges Repair
nodetool repair -pr -n

# List Pending Repairs
nodetool repair -st

# Display Token Range Ownership
nodetool ring

# Show the Status of Hints for Nodes
nodetool hintstats

# Display the Details of Pending Compactions
nodetool compactionhistory

# Capture Thread Dump for Diagnosis
nodetool tpstats

# Display the Size of Bloom Filters
nodetool cfstats

# Capture Diagnostic Information for a Specified Keyspace and Table
nodetool sjk mx --width 0 --notree --regex '(.*<keyspace>.*<table>.*)' -X -b

# Monitor JVM Garbage Collection
nodetool sjk gc --width 0

# Show the Distribution of Column Families Across Nodes
nodetool cfhistograms

# Display Details About the Cassandra Log
nodetool sjk log --all -X

# Capture Detailed Information About Cassandra Nodes
nodetool sjk dstat

# Display Information About Cassandra Snapshots
nodetool listsnapshots

# Flush All Tables or a Specific Table
nodetool flush <keyspace> <table>

# Repair Specific Ranges on a Node
nodetool repair -st <start_token> -et <end_token>

# Clear Hints for a Node
nodetool clearhints <target_node>

# Display Query Latency Information
nodetool sjk ops

# Trace Query Execution
nodetool settraceprobability 1.0

# Stop Tracing
nodetool settraceprobability 0.0
