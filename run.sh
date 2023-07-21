sudo docker run -it --ipc host \
--device /dev/video0:/dev/video0 \
--device /dev/video1:/dev/video1 \
--device /dev/snd:/dev/snd \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
-e DISPLAY=$DISPLAY \
sound_detect bash
