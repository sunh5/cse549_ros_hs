FROM althack/ros2:foxy-dev 

# ** [Optional] Uncomment this section to install additional packages. **
#
ENV DEBIAN_FRONTEND=noninteractive
ENV RTI_NC_LICENSE_ACCEPTED=yes
RUN apt-get update \
   && apt-get -y upgrade \
   && apt-get -y install --no-install-recommends ros-foxy-osrf-testing-tools-cpp \
        ros-foxy-test-msgs ros-foxy-performance-test-fixture libopencv-dev ros-foxy-mimick-vendor \
        ros-foxy-example-interfaces ros-foxy-ros-testing ros-foxy-ament-cmake-google-benchmark \
        acl libacl1-dev ros-foxy-cyclonedds ros-foxy-rmw-connext-cpp ros-foxy-tlsf-cpp \
        ros-foxy-cv-bridge ros-foxy-image-geometry ros-foxy-image-transport ocl-icd-opencl-dev \
        opencl-headers ros-foxy-camera-info-manager ros-foxy-camera-calibration-parsers \
        libboost-dev python3-requests ros-foxy-stereo-image-proc ros-foxy-rttest \
   #
   # Clean up
   && apt-get autoremove -y \
   && apt-get clean -y \
   && rm -rf /var/lib/apt/lists/*
ENV DEBIAN_FRONTEND=dialog

# Set up auto-source of workspace for ros user
ARG WORKSPACE
RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /home/ros/.bashrc
