wp core install
wp plugin activate wp-migrate-db-pro \
                   wp-migrate-db-pro-media-files \
                   wp-migrate-db-pro-cli

sh ./scripts/init-licenses.sh 
sh ./scripts/update-licensed-plugins.sh
sh ./scripts/migratedb-pull-media.sh

