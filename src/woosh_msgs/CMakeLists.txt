cmake_minimum_required(VERSION 2.8.3)
project(woosh_msgs)

find_package(catkin REQUIRED COMPONENTS std_msgs sensor_msgs geometry_msgs nav_msgs message_generation actionlib_msgs)

add_action_files(
  DIRECTORY docking_actions
)
add_action_files(
  DIRECTORY arm_actions
)
add_action_files(
  DIRECTORY controller_actions
)

add_message_files(
  DIRECTORY controller_msgs
)

add_service_files(
  DIRECTORY controller_srvs
)

add_message_files(
  DIRECTORY map_server
)

add_service_files(
  DIRECTORY follow_srvs
)

add_action_files(
  DIRECTORY nav_actions
)

add_service_files(
  DIRECTORY nav_srvs
)

add_service_files(
  DIRECTORY wifi_srvs
)

add_service_files(
  DIRECTORY system_srvs
)

add_service_files(
  DIRECTORY task_srvs
)

add_message_files(
  DIRECTORY wifi_msgs
)
add_message_files(
  DIRECTORY task_msgs
)

generate_messages(
  DEPENDENCIES std_msgs sensor_msgs geometry_msgs actionlib_msgs nav_msgs
)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS std_msgs actionlib_msgs nav_msgs
)

install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h"
  )

install(DIRECTORY controller_msgs/ map_server/ wifi_msgs/ task_msgs/
	DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/msg/
	FILES_MATCHING PATTERN "*.msg"
)

install(DIRECTORY controller_srvs/ map_server/ follow_srvs/ nav_srvs/ wifi_srvs/ system_srvs/ task_srvs/
	DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/srv/
	FILES_MATCHING PATTERN "*.srv"
)

install(DIRECTORY docking_actions/ arm_actions/ controller_actions/ map_server/ nav_actions/
	DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/action/
	FILES_MATCHING PATTERN "*.action"
)
