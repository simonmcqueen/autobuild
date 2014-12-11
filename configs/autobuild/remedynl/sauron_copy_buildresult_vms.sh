#!/bin/sh

export RSYNC_RSH=ssh
chmod ugo+r /nfs/openvms/v82ia64/*.html /nfs/openvms/v82ia64/*.txt
rsync -r --progress --delete -z --exclude *.tar* --exclude /*.tar*/ --exclude /ATCD*/ --exclude /MPC*/ --include *.txt --include *.html --exclude ** /nfs/openvms/v82ia64/* treebeard.remedy.nl::Buildlogs/openvmsia64

