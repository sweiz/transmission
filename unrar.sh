#!/bin/sh

#############################################################
# TransmissionUnrar.sh
#############################################################
# Transmission unrars into same folder after download is completed
#
# IMPORTANT: This script requires unrar to be installed within the
# FreeNAS Jail of Transmission. A tutorial on how to do this can be
# found under: http://www.bytegeist.net/?p=3
#
# PREREQUISITES: Edit the settings.json of Transmission according to:
# "script-torrent-done-enabled": true, 
# "script-torrent-done-filename": "/path/to/TransmissionUnrar.sh",
#
#############################################################
# deinidol@gmail.com
#############################################################

DEST_DIR="${TR_TORRENT_DIR}/${TR_TORRENT_NAME}/"
cd $DEST_DIR
find . -name '*.rar' -execdir 7z e -o- {} \;
