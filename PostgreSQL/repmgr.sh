# Show the status of the repmgr cluster on the specified host
/usr/pgsql-13/bin/repmgr -h [hostname] -U repmgr -d repmgr -f /etc/repmgr/13/repmgr.conf cluster show

# Check the health status of the repmgr node
/usr/pgsql-13/bin/repmgr -U repmgr -d repmgr -f /etc/repmgr/13/repmgr.conf node check

# Display the detailed status of the repmgr node
/usr/pgsql-13/bin/repmgr -U repmgr -d repmgr -f /etc/repmgr/13/repmgr.conf node status

# Clone a standby node from the specified host in a dry-run mode
/usr/pgsql-13/bin/repmgr -h [hostname] -U repmgr -d repmgr -f /etc/repmgr/13/repmgr.conf standby clone -F --dry-run

# Register a standby node in a dry-run mode
/usr/pgsql-13/bin/repmgr -f /etc/repmgr/13/repmgr.conf standby register -F --dry-run

# Promote a standby node in a dry-run mode
/usr/pgsql-13/bin/repmgr standby promote -f /etc/repmgr/13/repmgr.conf -F --log-to-file --dry-run

# Initiate a switchover in a dry-run mode
/usr/pgsql-13/bin/repmgr standby switchover -f /etc/repmgr/13/repmgr.conf -F --log-to-file --dry-run

# Unregister a standby node
/usr/pgsql-13/bin/repmgr -f /etc/repmgr/13/repmgr.conf standby unregister -F

# Display the status of the repmgr daemon
/usr/pgsql-13/bin/repmgr -f /etc/repmgr/13/repmgr.conf daemon status

# Pause the repmgr daemon in a dry-run mode
/usr/pgsql-13/bin/repmgr -f /etc/repmgr/13/repmgr.conf daemon pause --dry-run

# Display the status of the repmgr service
/usr/pgsql-13/bin/repmgr -f /etc/repmgr/13/repmgr.conf service status

# Pause the repmgr service in a dry-run mode
/usr/pgsql-13/bin/repmgr -f /etc/repmgr/13/repmgr.conf service pause --dry-run

# Crosscheck the repmgr cluster for consistency
/usr/pgsql-13/bin/repmgr -f /etc/repmgr/13/repmgr.conf repmgr cluster crosscheck
