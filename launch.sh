#!/bin/bash 
xhost +local:root

#--workdir="/home/$USER" \
#--volume="/home/$USER:/home/$USER" \
#--volume="/etc/group:/etc/group:ro" \
#--volume="/etc/passwd:/etc/passwd:ro" \
#--volume="/etc/shadow:/etc/shadow:ro" \
#--volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
#--volume="$HOME/host_docker:/home/user/host_docker" \

#-p 192.168.0.1:10000:10000 \
#--net=foo \
#--publish-all=true \
docker run --runtime=nvidia -it --rm \
--network host \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
-e LOCAL_USER_ID=`id -u $USER` \
-e LOCAL_GROUP_ID=`id -g $USER` \
-e LOCAL_GROUP_NAME=`id -gn $USER` \
 vizzy_armroutines bash

xhost -local:root
