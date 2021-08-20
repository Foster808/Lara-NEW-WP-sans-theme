#!/bin/sh

sh ./scripts/init-local-wp.sh
sh ./scripts/init-licenses.sh 
sh ./scripts/update-licensed-plugins.sh
sh ./scripts/migratedb-pull.sh
