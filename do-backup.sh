#!/bin/bash
set -e 

DUMP_FILE=${DUMP_DIRECTORY}/${BACKUP_PREFIX}-`date +%d%m%yT%H%M.tar`

echo -n "Dumping database to ${DUMP_FILE}..."
#Only this should be changed
pg_dump -U $DB_USERNAME -F t $DB_NAME > ${DUMP_FILE}
echo "Done."
