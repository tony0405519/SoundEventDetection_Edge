sudo docker run -it --ipc host \
--device /dev/video0:/dev/video0 \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
-e DISPLAY=$DISPLAY \
sound_detect bash
