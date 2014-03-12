//////////////////////////////////////////////////////
//  altitudeNode.cpp
//
//  Created on: Dec 19, 2013
//      Author: joselusl
//
//  Last modification on: Dec 19, 2013
//      Author: joselusl
//
//////////////////////////////////////////////////////



//I/O stream
//std::cout
#include <iostream>


//ROS
#include "ros/ros.h"

//parrotARDrone
#include "parrotARDroneOuts.h"

//Comunications
#include "communication_definition.h"



using namespace std;




int main(int argc,char **argv)
{
    //Ros Init
    ros::init(argc, argv, MODULE_NAME_DRIVER_PARROT_ALTITUDE);
    ros::NodeHandle n;

    cout<<"[ROSNODE] Starting droneAltitude"<<endl;

    //Vars
    AltitudeROSModule MyAltitudeROSModule;
    MyAltitudeROSModule.open(n,MODULE_NAME_DRIVER_PARROT_ALTITUDE);

    try
    {
        //Read messages
        ros::spin();
        return 1;

    }
    catch (std::exception &ex)
    {
        std::cout<<"[ROSNODE] Exception :"<<ex.what()<<std::endl;
    }
}
