# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sensors: 4 messages, 0 services")

set(MSG_I_FLAGS "-Isensors:/home/pranav/caesar2020/src/sensors/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sensors_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/Imu.msg" NAME_WE)
add_custom_target(_sensors_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensors" "/home/pranav/caesar2020/src/sensors/msg/Imu.msg" ""
)

get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/PanTilt.msg" NAME_WE)
add_custom_target(_sensors_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensors" "/home/pranav/caesar2020/src/sensors/msg/PanTilt.msg" ""
)

get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/LaserScan.msg" NAME_WE)
add_custom_target(_sensors_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensors" "/home/pranav/caesar2020/src/sensors/msg/LaserScan.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/Joy.msg" NAME_WE)
add_custom_target(_sensors_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensors" "/home/pranav/caesar2020/src/sensors/msg/Joy.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sensors
  "/home/pranav/caesar2020/src/sensors/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensors
)
_generate_msg_cpp(sensors
  "/home/pranav/caesar2020/src/sensors/msg/PanTilt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensors
)
_generate_msg_cpp(sensors
  "/home/pranav/caesar2020/src/sensors/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensors
)
_generate_msg_cpp(sensors
  "/home/pranav/caesar2020/src/sensors/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensors
)

### Generating Services

### Generating Module File
_generate_module_cpp(sensors
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensors
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sensors_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sensors_generate_messages sensors_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/Imu.msg" NAME_WE)
add_dependencies(sensors_generate_messages_cpp _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/PanTilt.msg" NAME_WE)
add_dependencies(sensors_generate_messages_cpp _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensors_generate_messages_cpp _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/Joy.msg" NAME_WE)
add_dependencies(sensors_generate_messages_cpp _sensors_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensors_gencpp)
add_dependencies(sensors_gencpp sensors_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensors_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sensors
  "/home/pranav/caesar2020/src/sensors/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensors
)
_generate_msg_eus(sensors
  "/home/pranav/caesar2020/src/sensors/msg/PanTilt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensors
)
_generate_msg_eus(sensors
  "/home/pranav/caesar2020/src/sensors/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensors
)
_generate_msg_eus(sensors
  "/home/pranav/caesar2020/src/sensors/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensors
)

### Generating Services

### Generating Module File
_generate_module_eus(sensors
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensors
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sensors_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sensors_generate_messages sensors_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/Imu.msg" NAME_WE)
add_dependencies(sensors_generate_messages_eus _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/PanTilt.msg" NAME_WE)
add_dependencies(sensors_generate_messages_eus _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensors_generate_messages_eus _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/Joy.msg" NAME_WE)
add_dependencies(sensors_generate_messages_eus _sensors_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensors_geneus)
add_dependencies(sensors_geneus sensors_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensors_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sensors
  "/home/pranav/caesar2020/src/sensors/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensors
)
_generate_msg_lisp(sensors
  "/home/pranav/caesar2020/src/sensors/msg/PanTilt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensors
)
_generate_msg_lisp(sensors
  "/home/pranav/caesar2020/src/sensors/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensors
)
_generate_msg_lisp(sensors
  "/home/pranav/caesar2020/src/sensors/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensors
)

### Generating Services

### Generating Module File
_generate_module_lisp(sensors
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensors
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sensors_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sensors_generate_messages sensors_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/Imu.msg" NAME_WE)
add_dependencies(sensors_generate_messages_lisp _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/PanTilt.msg" NAME_WE)
add_dependencies(sensors_generate_messages_lisp _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensors_generate_messages_lisp _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/Joy.msg" NAME_WE)
add_dependencies(sensors_generate_messages_lisp _sensors_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensors_genlisp)
add_dependencies(sensors_genlisp sensors_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensors_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sensors
  "/home/pranav/caesar2020/src/sensors/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensors
)
_generate_msg_nodejs(sensors
  "/home/pranav/caesar2020/src/sensors/msg/PanTilt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensors
)
_generate_msg_nodejs(sensors
  "/home/pranav/caesar2020/src/sensors/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensors
)
_generate_msg_nodejs(sensors
  "/home/pranav/caesar2020/src/sensors/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensors
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sensors
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensors
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sensors_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sensors_generate_messages sensors_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/Imu.msg" NAME_WE)
add_dependencies(sensors_generate_messages_nodejs _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/PanTilt.msg" NAME_WE)
add_dependencies(sensors_generate_messages_nodejs _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensors_generate_messages_nodejs _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/Joy.msg" NAME_WE)
add_dependencies(sensors_generate_messages_nodejs _sensors_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensors_gennodejs)
add_dependencies(sensors_gennodejs sensors_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensors_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sensors
  "/home/pranav/caesar2020/src/sensors/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensors
)
_generate_msg_py(sensors
  "/home/pranav/caesar2020/src/sensors/msg/PanTilt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensors
)
_generate_msg_py(sensors
  "/home/pranav/caesar2020/src/sensors/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensors
)
_generate_msg_py(sensors
  "/home/pranav/caesar2020/src/sensors/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensors
)

### Generating Services

### Generating Module File
_generate_module_py(sensors
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensors
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sensors_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sensors_generate_messages sensors_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/Imu.msg" NAME_WE)
add_dependencies(sensors_generate_messages_py _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/PanTilt.msg" NAME_WE)
add_dependencies(sensors_generate_messages_py _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensors_generate_messages_py _sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pranav/caesar2020/src/sensors/msg/Joy.msg" NAME_WE)
add_dependencies(sensors_generate_messages_py _sensors_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensors_genpy)
add_dependencies(sensors_genpy sensors_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensors_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensors)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensors
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sensors_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(sensors_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensors)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensors
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sensors_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(sensors_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensors)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensors
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sensors_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(sensors_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensors)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensors
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sensors_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(sensors_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensors)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensors\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensors
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sensors_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(sensors_generate_messages_py sensor_msgs_generate_messages_py)
endif()
