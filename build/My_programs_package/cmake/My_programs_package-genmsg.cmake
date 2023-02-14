# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "My_programs_package: 1 messages, 1 services")

set(MSG_I_FLAGS "-IMy_programs_package:/home/ramprakash/My_workspace/src/My_programs_package/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(My_programs_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ramprakash/My_workspace/src/My_programs_package/msg/IOT_sensor.msg" NAME_WE)
add_custom_target(_My_programs_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "My_programs_package" "/home/ramprakash/My_workspace/src/My_programs_package/msg/IOT_sensor.msg" ""
)

get_filename_component(_filename "/home/ramprakash/My_workspace/src/My_programs_package/srv/addTwoInt.srv" NAME_WE)
add_custom_target(_My_programs_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "My_programs_package" "/home/ramprakash/My_workspace/src/My_programs_package/srv/addTwoInt.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(My_programs_package
  "/home/ramprakash/My_workspace/src/My_programs_package/msg/IOT_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/My_programs_package
)

### Generating Services
_generate_srv_cpp(My_programs_package
  "/home/ramprakash/My_workspace/src/My_programs_package/srv/addTwoInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/My_programs_package
)

### Generating Module File
_generate_module_cpp(My_programs_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/My_programs_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(My_programs_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(My_programs_package_generate_messages My_programs_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ramprakash/My_workspace/src/My_programs_package/msg/IOT_sensor.msg" NAME_WE)
add_dependencies(My_programs_package_generate_messages_cpp _My_programs_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ramprakash/My_workspace/src/My_programs_package/srv/addTwoInt.srv" NAME_WE)
add_dependencies(My_programs_package_generate_messages_cpp _My_programs_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(My_programs_package_gencpp)
add_dependencies(My_programs_package_gencpp My_programs_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS My_programs_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(My_programs_package
  "/home/ramprakash/My_workspace/src/My_programs_package/msg/IOT_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/My_programs_package
)

### Generating Services
_generate_srv_eus(My_programs_package
  "/home/ramprakash/My_workspace/src/My_programs_package/srv/addTwoInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/My_programs_package
)

### Generating Module File
_generate_module_eus(My_programs_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/My_programs_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(My_programs_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(My_programs_package_generate_messages My_programs_package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ramprakash/My_workspace/src/My_programs_package/msg/IOT_sensor.msg" NAME_WE)
add_dependencies(My_programs_package_generate_messages_eus _My_programs_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ramprakash/My_workspace/src/My_programs_package/srv/addTwoInt.srv" NAME_WE)
add_dependencies(My_programs_package_generate_messages_eus _My_programs_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(My_programs_package_geneus)
add_dependencies(My_programs_package_geneus My_programs_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS My_programs_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(My_programs_package
  "/home/ramprakash/My_workspace/src/My_programs_package/msg/IOT_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/My_programs_package
)

### Generating Services
_generate_srv_lisp(My_programs_package
  "/home/ramprakash/My_workspace/src/My_programs_package/srv/addTwoInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/My_programs_package
)

### Generating Module File
_generate_module_lisp(My_programs_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/My_programs_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(My_programs_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(My_programs_package_generate_messages My_programs_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ramprakash/My_workspace/src/My_programs_package/msg/IOT_sensor.msg" NAME_WE)
add_dependencies(My_programs_package_generate_messages_lisp _My_programs_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ramprakash/My_workspace/src/My_programs_package/srv/addTwoInt.srv" NAME_WE)
add_dependencies(My_programs_package_generate_messages_lisp _My_programs_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(My_programs_package_genlisp)
add_dependencies(My_programs_package_genlisp My_programs_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS My_programs_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(My_programs_package
  "/home/ramprakash/My_workspace/src/My_programs_package/msg/IOT_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/My_programs_package
)

### Generating Services
_generate_srv_nodejs(My_programs_package
  "/home/ramprakash/My_workspace/src/My_programs_package/srv/addTwoInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/My_programs_package
)

### Generating Module File
_generate_module_nodejs(My_programs_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/My_programs_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(My_programs_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(My_programs_package_generate_messages My_programs_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ramprakash/My_workspace/src/My_programs_package/msg/IOT_sensor.msg" NAME_WE)
add_dependencies(My_programs_package_generate_messages_nodejs _My_programs_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ramprakash/My_workspace/src/My_programs_package/srv/addTwoInt.srv" NAME_WE)
add_dependencies(My_programs_package_generate_messages_nodejs _My_programs_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(My_programs_package_gennodejs)
add_dependencies(My_programs_package_gennodejs My_programs_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS My_programs_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(My_programs_package
  "/home/ramprakash/My_workspace/src/My_programs_package/msg/IOT_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/My_programs_package
)

### Generating Services
_generate_srv_py(My_programs_package
  "/home/ramprakash/My_workspace/src/My_programs_package/srv/addTwoInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/My_programs_package
)

### Generating Module File
_generate_module_py(My_programs_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/My_programs_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(My_programs_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(My_programs_package_generate_messages My_programs_package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ramprakash/My_workspace/src/My_programs_package/msg/IOT_sensor.msg" NAME_WE)
add_dependencies(My_programs_package_generate_messages_py _My_programs_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ramprakash/My_workspace/src/My_programs_package/srv/addTwoInt.srv" NAME_WE)
add_dependencies(My_programs_package_generate_messages_py _My_programs_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(My_programs_package_genpy)
add_dependencies(My_programs_package_genpy My_programs_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS My_programs_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/My_programs_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/My_programs_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(My_programs_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/My_programs_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/My_programs_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(My_programs_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/My_programs_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/My_programs_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(My_programs_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/My_programs_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/My_programs_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(My_programs_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/My_programs_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/My_programs_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/My_programs_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(My_programs_package_generate_messages_py std_msgs_generate_messages_py)
endif()
