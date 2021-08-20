# simple wordpress boilerplate

This is a boilerplate for WordPress simple sites. This references a [parent
theme][parent], which is a submodule in a separate git repo.

  [parent]: https://github.com/AltaPlanning/simple-wordpress-boilerplate-theme
 
If cloning from a Github template, it may overlook the submodule.

    git submodule add \
        git@github.com:AltaPlanning/simple-wordpress-boilerplate-theme.git \
        wordpress/wp-content/themes/understrap

Wordpress Core files and base plugins are not checked into the boilerplate,
however site repositories using this as a template could check them in for version control
peace of mind. 

## Setting up a new site with the boilerplate

See the repository wiki: [New Site Creation Steps][wikilink]

  [wikilink]: https://github.com/AltaPlanning/simple-wordpress-boilerplate/wiki/New-Site-Creation-Steps

## Quick start

This will set up wordpress and fetch the DB from whatever is stored in `.env`,
for a basic template see `env-template`.

    docker-compose up -d
    docker-compose run cli ./scripts/init-everything.sh

While waiting you can also compile the initial theme:

    cd wordpress/wp-content/themes/understrap-child
    npm run install && npm run build


## Quick start for existing sites

First make sure your `.env` is up to date with the correct site details and
migratewpdb key.

If you've already got something running but just want to fetch the latest DB
for local dev, with a fresh docker db (run `docker-compose down -v` and then
`docker-compose up -d` to be sure), run the following:

    docker-compose run cli ./scripts/fetch-latest.sh

### Plugin setup

See the wiki for [Docs/Plugin troubleshooting stuff](https://github.com/AltaPlanning/simple-wordpress-boilerplate/wiki/New-Sites:-Plugin-Setup-Notes).

### Basic Theme setup

See the wiki for [basic theme setup and customization](https://github.com/AltaPlanning/simple-wordpress-boilerplate/wiki/New-sites:-Theme-Setup-and-Customization)
