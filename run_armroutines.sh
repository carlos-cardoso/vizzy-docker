tmux \
  new-session  "roscore ; read" \; \
  split-window "sleep 5; yarpserver --ros ; read" \; \
  split-window "sleep 10; roslaunch vizzy_launch vizzy_simulation.launch use_yarp:=true ; read" \; \
  split-window "sleep 35; VizzyArmRoutines --robot vizzySim ; read" \; \
  select-layout even-vertical

#roscore
#yarpserver --ros
#roslaunch vizzy_launch vizzy_simulation.launch use_yarp:=true
#VizzyArmRoutines --robot vizzySim