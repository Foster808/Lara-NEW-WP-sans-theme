#!/bin/sh

wp migratedb pull $MIGRATEDB_URL $MIGRATEDB_KEY --exclude-spam --media=compare-and-remove
wp migratedb find-replace --find="$MIGRATEDB_STEP_A_SRC" --replace="$MIGRATEDB_STEP_A_DES"
wp migratedb find-replace --find="$MIGRATEDB_STEP_B_SRC" --replace="$MIGRATEDB_STEP_B_DES"
