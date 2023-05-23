#!/bin/sh
for PLUGIN in hello-dolly
do
    curl -O https://downloads.wordpress.org/plugin/$PLUGIN.zip
    unzip $PLUGIN.zip -d wp-content/plugins/
    rm $PLUGIN.zip
done