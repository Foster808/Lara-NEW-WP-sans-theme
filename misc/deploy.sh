#!/bin/sh
# NB: the dry run flag is on, -n
rsync -avzn \
    --rsync-path "nice rsync" \
    --exclude-from=rsync-exclude \
    wordpress/ altaprojects://home/altaprojects/$PROJECTPATH/

