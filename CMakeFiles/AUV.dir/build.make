# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/cmake-3.20.3/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.20.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/andy/Documents/Coding/AUV

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andy/Documents/Coding/AUV

# Include any dependencies generated for this target.
include CMakeFiles/AUV.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/AUV.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AUV.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AUV.dir/flags.make

CMakeFiles/AUV.dir/SLAM/src/main.cpp.o: CMakeFiles/AUV.dir/flags.make
CMakeFiles/AUV.dir/SLAM/src/main.cpp.o: SLAM/src/main.cpp
CMakeFiles/AUV.dir/SLAM/src/main.cpp.o: CMakeFiles/AUV.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andy/Documents/Coding/AUV/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AUV.dir/SLAM/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AUV.dir/SLAM/src/main.cpp.o -MF CMakeFiles/AUV.dir/SLAM/src/main.cpp.o.d -o CMakeFiles/AUV.dir/SLAM/src/main.cpp.o -c /home/andy/Documents/Coding/AUV/SLAM/src/main.cpp

CMakeFiles/AUV.dir/SLAM/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AUV.dir/SLAM/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andy/Documents/Coding/AUV/SLAM/src/main.cpp > CMakeFiles/AUV.dir/SLAM/src/main.cpp.i

CMakeFiles/AUV.dir/SLAM/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AUV.dir/SLAM/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andy/Documents/Coding/AUV/SLAM/src/main.cpp -o CMakeFiles/AUV.dir/SLAM/src/main.cpp.s

# Object files for target AUV
AUV_OBJECTS = \
"CMakeFiles/AUV.dir/SLAM/src/main.cpp.o"

# External object files for target AUV
AUV_EXTERNAL_OBJECTS =

AUV: CMakeFiles/AUV.dir/SLAM/src/main.cpp.o
AUV: CMakeFiles/AUV.dir/build.make
AUV: /opt/opencv/build/lib/libopencv_gapi.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_stitching.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_alphamat.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_aruco.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_barcode.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_bgsegm.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_bioinspired.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_ccalib.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_cvv.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_dnn_objdetect.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_dnn_superres.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_dpm.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_face.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_freetype.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_fuzzy.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_hdf.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_hfs.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_img_hash.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_intensity_transform.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_line_descriptor.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_mcc.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_quality.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_rapid.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_reg.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_rgbd.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_saliency.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_stereo.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_structured_light.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_superres.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_surface_matching.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_tracking.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_videostab.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_wechat_qrcode.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_xfeatures2d.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_xobjdetect.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_xphoto.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_shape.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_highgui.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_datasets.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_plot.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_text.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_ml.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_phase_unwrapping.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_optflow.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_ximgproc.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_video.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_videoio.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_dnn.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_imgcodecs.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_objdetect.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_calib3d.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_features2d.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_flann.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_photo.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_imgproc.so.4.5.2
AUV: /opt/opencv/build/lib/libopencv_core.so.4.5.2
AUV: CMakeFiles/AUV.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andy/Documents/Coding/AUV/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AUV"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AUV.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AUV.dir/build: AUV
.PHONY : CMakeFiles/AUV.dir/build

CMakeFiles/AUV.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AUV.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AUV.dir/clean

CMakeFiles/AUV.dir/depend:
	cd /home/andy/Documents/Coding/AUV && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andy/Documents/Coding/AUV /home/andy/Documents/Coding/AUV /home/andy/Documents/Coding/AUV /home/andy/Documents/Coding/AUV /home/andy/Documents/Coding/AUV/CMakeFiles/AUV.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AUV.dir/depend

