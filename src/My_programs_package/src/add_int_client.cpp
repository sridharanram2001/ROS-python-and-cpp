#include "ros/ros.h"
#include "My_programs_package/addTwoInt.h"
#include <cstdlib>


int main(int argc,char **argv)
{ 
	ros::init(argc,argv,"add_two_int_client");
	if (argc !=3)
	{
		ROS_INFO("usage : add_int_client X Y");
		return 1;
	}

	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<My_programs_package::addTwoInt>("add_two_ints");
	My_programs_package::addTwoInt service;

	service.request.a = atoll(argv[1]);
	service.request.b = atoll(argv[2]);

	if(client.call(service))
	{

		ROS_INFO("Sum %ld",(long int)service.response.sum);
	}
	else
	{

		ROS_ERROR("Failed to call service add_two_ints");
		return 1;	
	}

	return 0;
}
