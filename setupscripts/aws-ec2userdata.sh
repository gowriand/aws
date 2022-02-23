#!/bin/bash
###########################
# Sample- Give app separated by space 
## Add puppet last only as it is followed by a reboot
# applist=(jenkins jenkinslave awscli docker puppet)
####################################

applist=(jenkinslave docker awscli)

for app in ${applist[@]}
do
    echo $app
    cd /
    sudo git clone https://github.com/gowriand/$app.git
    cd /$app/setupscripts/
    sudo sh -x setup-$app.sh
done
