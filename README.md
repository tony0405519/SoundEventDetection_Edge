# SoundEventDetection
This is a docker and tutorial for edge device.
- ubuntu 22.04 PC
- Nvidia Jetson AGX TX2

## Steps
1. download zip from: https://github.com/waggle-sensor/plugin-yamnet/tree/main
2. command the 26th line "RUN sage-cli.py storage files download ${BUCKET_ID_MODEL} lite-model_yamnet_tflite_1.tflite --target /app/lite-model_yamnet_tflite_1.tflite" in Dockerfile
3. upload "lite-model_yamnet_classification_tflite_1.tflite" to the same level as "Dockerfile"
4. run `build.sh` to build docker image.
5. run `$ xhost +` in local to allow host connection.
6. run `run.sh` to create and start container.

## Caution
- Make sure `$DISPLAY` is the same in local and docker. Run `$ echo $DISPLAY` to check. If not, set docker's variable to right. Run `$ export DISPAY={what's in local}`.
- The package version list can't be the same in PC and Xavier, I'm still trying to figure out the problem.
- `Dockerfile_xavier is also compatible with PC`

## Todo
- Jetson Nano
