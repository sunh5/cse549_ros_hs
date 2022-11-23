#!/bin/bash
set -e

# Set the default build type
BUILD_TYPE=RelWithDebInfo
colcon build \
        --merge-install \
        --symlink-install \
        --cmake-args "-DCMAKE_BUILD_TYPE=$BUILD_TYPE" "-DCMAKE_EXPORT_COMPILE_COMMANDS=On" \
        "-DPERFORMANCE_TEST_RCLCPP_ENABLED=ON" \
        -Wall -Wextra -Wpedantic \
        --packages-skip test_rmw_implementation rmw_iceoryx_cpp action_tutorials_interfaces demo_nodes_cpp performance_test
        #--packages-up-to image_pipeline image_proc
