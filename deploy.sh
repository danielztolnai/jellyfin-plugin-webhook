#!/bin/bash
for PLUGIN_FILE in $(grep '^artifacts:' build.yaml -A999 | grep '^\S' -B999 | grep '^\s\+-' | cut -d '"' -f 2); do
    scp "./Jellyfin.Plugin.Webhook/bin/Release/net6.0/publish/${PLUGIN_FILE}" "root@jellyfin.lan:/var/lib/jellyfin/plugins/Webhook_11.0.0.0/";
done
