# vizzy-docker

## Quickstart

**Install docker-nvidia:**
```
$ https://github.com/NVIDIA/nvidia-docker
```
**Pull the docker image:**
```
$ sudo docker pull cesfcardoso/vizzy:hintt
```
**Launch the docker image:**
```
docker run --runtime=nvidia -it --rm --network host --env="DISPLAY"  --env="QT_X11_NO_MITSHM=1"  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" -e LOCAL_USER_ID=`id -u $USER` -e LOCAL_GROUP_ID=`id -g $USER` -e LOCAL_GROUP_NAME=`id -gn $USER` cesfcardoso/vizzy:hintt bash
```
**Run the vizzy simulation inside the docker image:**
```
$ sh run_armroutines.sh
```


****Troubleshoot:****

**No GUI appears:** allow access to the X Server from other hosts (not secure).
```
$ xhost +
$ docker run --runtime=nvidia -it --rm --network host --env="DISPLAY"  --env="QT_X11_NO_MITSHM=1"  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" -e LOCAL_USER_ID=`id -u $USER` -e LOCAL_GROUP_ID=`id -g $USER` -e LOCAL_GROUP_NAME=`id -gn $USER` cesfcardoso/vizzy:hintt bash
```
**yarpserver dies:** inside docker delete the yarp.conf file.
```
$ rm /root/.config/yarp/yarp.conf
$ sh run_armroutines.sh
```
