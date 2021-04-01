# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rewa_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Irewa_msgs:/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rewa_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg" NAME_WE)
add_custom_target(_rewa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rewa_msgs" "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg" ""
)

get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg" NAME_WE)
add_custom_target(_rewa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rewa_msgs" "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg" "rewa_msgs/Euler"
)

get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/WalkOutput.msg" NAME_WE)
add_custom_target(_rewa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rewa_msgs" "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/WalkOutput.msg" "rewa_msgs/Euler:rewa_msgs/LegJoint"
)

get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/ControlCommandMX28.msg" NAME_WE)
add_custom_target(_rewa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rewa_msgs" "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/ControlCommandMX28.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rewa_msgs
)
_generate_msg_cpp(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg"
  "${MSG_I_FLAGS}"
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rewa_msgs
)
_generate_msg_cpp(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/WalkOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg;/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rewa_msgs
)
_generate_msg_cpp(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/ControlCommandMX28.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rewa_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(rewa_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rewa_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rewa_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rewa_msgs_generate_messages rewa_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_cpp _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_cpp _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/WalkOutput.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_cpp _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/ControlCommandMX28.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_cpp _rewa_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rewa_msgs_gencpp)
add_dependencies(rewa_msgs_gencpp rewa_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rewa_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rewa_msgs
)
_generate_msg_eus(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg"
  "${MSG_I_FLAGS}"
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rewa_msgs
)
_generate_msg_eus(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/WalkOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg;/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rewa_msgs
)
_generate_msg_eus(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/ControlCommandMX28.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rewa_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(rewa_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rewa_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rewa_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rewa_msgs_generate_messages rewa_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_eus _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_eus _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/WalkOutput.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_eus _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/ControlCommandMX28.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_eus _rewa_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rewa_msgs_geneus)
add_dependencies(rewa_msgs_geneus rewa_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rewa_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rewa_msgs
)
_generate_msg_lisp(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg"
  "${MSG_I_FLAGS}"
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rewa_msgs
)
_generate_msg_lisp(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/WalkOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg;/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rewa_msgs
)
_generate_msg_lisp(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/ControlCommandMX28.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rewa_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(rewa_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rewa_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rewa_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rewa_msgs_generate_messages rewa_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_lisp _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_lisp _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/WalkOutput.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_lisp _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/ControlCommandMX28.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_lisp _rewa_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rewa_msgs_genlisp)
add_dependencies(rewa_msgs_genlisp rewa_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rewa_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rewa_msgs
)
_generate_msg_nodejs(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg"
  "${MSG_I_FLAGS}"
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rewa_msgs
)
_generate_msg_nodejs(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/WalkOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg;/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rewa_msgs
)
_generate_msg_nodejs(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/ControlCommandMX28.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rewa_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rewa_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rewa_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rewa_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rewa_msgs_generate_messages rewa_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_nodejs _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_nodejs _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/WalkOutput.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_nodejs _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/ControlCommandMX28.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_nodejs _rewa_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rewa_msgs_gennodejs)
add_dependencies(rewa_msgs_gennodejs rewa_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rewa_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rewa_msgs
)
_generate_msg_py(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg"
  "${MSG_I_FLAGS}"
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rewa_msgs
)
_generate_msg_py(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/WalkOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg;/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rewa_msgs
)
_generate_msg_py(rewa_msgs
  "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/ControlCommandMX28.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rewa_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(rewa_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rewa_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rewa_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rewa_msgs_generate_messages rewa_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/Euler.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_py _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/LegJoint.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_py _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/WalkOutput.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_py _rewa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmhrdk/Dev/rewa/src/rewa_msgs/msg/ControlCommandMX28.msg" NAME_WE)
add_dependencies(rewa_msgs_generate_messages_py _rewa_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rewa_msgs_genpy)
add_dependencies(rewa_msgs_genpy rewa_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rewa_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rewa_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rewa_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rewa_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rewa_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rewa_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rewa_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rewa_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rewa_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rewa_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rewa_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rewa_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rewa_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rewa_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rewa_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rewa_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rewa_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
