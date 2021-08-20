#!/bin/sh
# docker-compose run cli ./init-docker-db.sh

# Setup core with docker db basics
wp core download --version=5.4
wp config create --dbname=wordpress --dbuser=wordpress
wp core install
wp theme delete twentynineteen \ 
                twentyseventeen \
                twentysixteen \
                twentytwenty

# theme
wp theme activate understrap-child

# premium plugins
wp plugin install `pwd`/premium-plugins/advanced-custom-fields-pro.zip \
                  `pwd`/premium-plugins/wp-migrate-db-pro.zip \
                  `pwd`/premium-plugins/wp-migrate-db-pro-media-files.zip \
                  `pwd`/premium-plugins/wp-migrate-db-pro-cli-1.3.5.zip \
                  `pwd`/premium-plugins/gravityformsgutenberg_1.0-rc-1.4.zip \
                  `pwd`/premium-plugins/gravityforms_2.4.15.13.zip

wp plugin activate advanced-custom-fields-pro \
                   wp-migrate-db-pro \
                   wp-migrate-db-pro-media-files \
                   wp-migrate-db-pro-cli \
                   gravityforms \
                   gravityformsgutenberg 

# required for theme
wp plugin install kadence-blocks \
                  custom-post-type-ui \
                  safe-svg \
                  polylang \
                  olympus-google-fonts \
                  --activate


# Misc
wp language core update
