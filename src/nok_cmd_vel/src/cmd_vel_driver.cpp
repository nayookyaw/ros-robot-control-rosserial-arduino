#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "nok_cmd_vel_command");
    ros::NodeHandle nh;

    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("nok/cmd_vel", 100);

    srand(time(0));

    ros::Rate rate(1);

    while (ros::ok())
    {
        geometry_msgs::Twist msg;

        pub.publish(msg);
        rate.sleep();
    }
    
}