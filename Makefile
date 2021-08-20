THEME_PARENT_VERSION_TAG := "v0.1.0"

.PHONY:
submodules:
	git submodule update --init --recursive

.PHONY:
initial_theme:
	cd wordpress/wp-content/themes/understrap-child \
		&& npm install \
		&& gulp compile

.PHONY:
post_checkout: submodules initial_theme

