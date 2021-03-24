#include <iostream>
#include "rewa_motion/IKWalk.hpp"
#include "ros/ros.h"
#include "std_msgs/String.h"


class WalkEngine {

	private:
	
	ros::Publisher pub;

	struct Rhoban::IKWalkParameters params;

	double phase_ = 0.0;
	double time_ = 0.0;	
	double timeLength_ = 2.0;

	public:

	WalkEngine (ros::NodeHandle &nh, double phase, double time, double timeLength) {
		phase_ = phase;
		time_ = time;
		timeLength_ = timeLength;
		
		pub = nh.advertise<std_msgs::String>("/walking_state", 10);

		params.distHipToKnee = 0.093;
		params.distKneeToAnkle = 0.105;
		params.distAnkleToGround = 0.032;
		params.distFeetLateral = 0.092;
		params.freq = 1.7;
		params.enabledGain = 1.0;
		params.supportPhaseRatio = 0.0;
		params.footYOffset = 0.025;
		params.stepGain = 0.0;
		params.riseGain = 0.035;
		params.turnGain = 0.0;
		params.lateralGain = 0.0;
		params.trunkZOffset = 0.02;
		params.swingGain = 0.02;
		params.swingRollGain = 0.0;
		params.swingPhase = 0.25;
		params.stepUpVel = 4.0;
		params.stepDownVel = 4.0;
		params.riseUpVel = 4.0;
		params.riseDownVel = 4.0;
		params.swingPause = 0.0;
		params.swingVel = 4.0;
		params.trunkXOffset = 0.02;
		params.trunkYOffset = 0.0;
		params.trunkPitch = 0.15;
		params.trunkRoll = 0.0;
		params.extraLeftX = 0.0;
		params.extraLeftY = 0.0;
		params.extraLeftZ = 0.0;
		params.extraRightX = 0.0;
		params.extraRightY = 0.0;
		params.extraRightZ = 0.0;
		params.extraLeftYaw = 0.0;
		params.extraLeftPitch = 0.0;
		params.extraLeftRoll = 0.0;
		params.extraRightYaw = 0.0;
		params.extraRightPitch = 0.0;
		params.extraRightRoll = 0.0;
		
	}

	/**
	 * Run the walk for given among of time and update
	 * phase and time state
	 */
	void runWalk() {
		//Publish Rate
		ros::Rate rate(10);
		
		//Walking State Message
		std_msgs::String walking_state;
		//Leg motor computed positions
		struct Rhoban::IKWalkOutputs outputs;
		
		//Walk engine frequency
		double engineFrequency = 50.0;
		while(ros::ok()) {
			for (double t=0.0;t<=timeLength_;t+=1.0/engineFrequency) {
				time_ += 1.0/engineFrequency;
				bool success = Rhoban::IKWalk::walk(
					params, //Walk parameters
					1.0/engineFrequency, //Time step
					phase_, //Current walk phase -will be updated)
					outputs); //Result target position (updated)
				if (!success) {
					//The requested position for left or right foot is not feasible
					//(phase is not updated)
					std::cout << time_ << " Inverse Kinematics error. Position not reachable." << std::endl;
				} else {
					std::cout << time_ << " ";
					std::cout << phase_ << " ";
					std::cout << outputs.left_hip_yaw << " ";
					std::cout << outputs.left_hip_pitch << " ";
					std::cout << outputs.left_hip_roll << " ";
					std::cout << outputs.left_knee << " ";
					std::cout << outputs.left_ankle_pitch << " ";
					std::cout << outputs.left_ankle_roll << " ";
					std::cout << outputs.right_hip_yaw << " ";
					std::cout << outputs.right_hip_pitch << " ";
					std::cout << outputs.right_hip_roll << " ";
					std::cout << outputs.right_knee << " ";
					std::cout << outputs.right_ankle_pitch << " ";
					std::cout << outputs.right_ankle_roll << " ";
					std::cout << std::endl;

					walking_state.data = "Walking";
				}

				pub.publish(walking_state);

				ros::spinOnce();
				rate.sleep();
			}
		}
	}
};

int main(int argc, char **argv)
{
	ros::init(argc, argv, "walk_engine");
	ros::NodeHandle nh;
	
	WalkEngine we(nh, 0.0, 0.0, 2.0);

	we.runWalk();
/*
    //The walk is stopped
    params.enabledGain = 0.0;
    params.stepGain = 0.0;
    params.lateralGain = 0.0;
    params.turnGain = 0.0;
    runWalk(params, 2.0, phase, time);
    
    //The walk is started while walking on place
    params.enabledGain = 1.0;
    params.stepGain = 0.0;
    params.lateralGain = 0.0;
    params.turnGain = 0.0;
    runWalk(params, 2.0, phase, time);

    //Walk forward
    params.enabledGain = 1.0;
    params.stepGain = 0.02;
    params.lateralGain = 0.0;
    params.turnGain = 0.0;
    runWalk(params, 2.0, phase, time);

    //Walk on the left with lateral steps
    params.enabledGain = 1.0;
    params.stepGain = 0.0;
    params.lateralGain = 0.02;
    params.turnGain = 0.0;
    runWalk(params, 2.0, phase, time);
    
    //Turn on the right
    params.enabledGain = 1.0;
    params.stepGain = 0.0;
    params.lateralGain = 0.0;
    params.turnGain = -0.1;
    runWalk(params, 2.0, phase, time);

    //Stop the walk
    params.enabledGain = 0.0;
    params.stepGain = 0.0;
    params.lateralGain = 0.0;
    params.turnGain = 0.0;
    runWalk(params, 2.0, phase, time);
*/
    /**
     * Note that in practice params.stepGain = 0.0 does not 
     * make the robot walk on place. Some offset step trim have to
     * be tunned to really find the robot "neutral". 
     */
    return 0;
}

