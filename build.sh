docker build -t gazebo_nvidia -f Dockerfile.gazebo_nvidia .
docker build -t yarp -f Dockerfile.yarp .
docker build -t icub -f Dockerfile.icub .
docker build -t vizzy -f Dockerfile.vizzy .
docker build -t vizzy_armroutines -f Dockerfile.vizzy_armroutines .

