#!/bin/bash
FileYouWantToTest='/mnt/dar-dc-01/docker/Volumes/travis/scripts/update-hass.txt'
echo -n "Verifying if $FileYouWantToTest exist..."
if [ -f $FileYouWantToTest ]
    then
        rm -f $FileYouWantToTest
    #    ./pull.sh

	cd /var/snap/docker/common/var-lib-docker/volumes/58f3283090e6f82058c64b2e8ab991d7a6d6952191f5febb8463485190dd2296/_data
	echo -n "Pulling from Git"
	git pull
 	echo -n "Restarting docker"
	docker restart home-assistant
fi
exit 0
