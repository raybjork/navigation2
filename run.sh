#!/bin/bash
# docker build -f Dockerfile \
#   --tag navigation2:"$ROS_DISTRO" \
#   --build-arg FROM_IMAGE=ros:"$ROS_DISTRO" \
#   --build-arg OVERLAY_MIXINS="release ccache lld" \
#   --cache-from ghcr.io/ros-planning/navigation2:main \
#   ./navigation2


export UNDERLAY_MIXINS="debug ccache lld"
export OVERLAY_MIXINS="debug ccache coverage-gcc lld"
docker build -t nav2:latest \
  --build-arg UNDERLAY_MIXINS \
  --build-arg OVERLAY_MIXINS ./
