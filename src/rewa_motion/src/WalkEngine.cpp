#include <iostream>
#include <rewa_motion/IKWalk.hpp>
#include <ros/ros.h>
#include <rewa_msgs/LegJoint.h>
#include <ros/console.h>


class WalkEngine {

	private:
	
	ros::Publisher left_leg_joints_pub;
	ros::Publisher right_leg_joints_pub;

	struct Rhoban::IKWalkParameters params;

	double phase_ = 0.0;
	double time_ = 0.0;	
	double timeLength_ = 2.0;

	public:

	WalkEngine (ros::NodeHandle &nh, double phase, double time, double timeLength) {
		phase_ = phase;
		time_ = time;
		timeLength_ = timeLength;
		
		left_leg_joints_pub = nh.advertise<rewa_msgs::LegJoint>("/left_leg_joints", 1);
		right_leg_joints_pub = nh.advertise<rewa_msgs::LegJoint>("/right_leg_joints", 1);

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

	void runWalk() {
		ros::Rate rate(50);
		
		rewa_msgs::LegJoint left_leg_joints;
		rewa_msgs::LegJoint right_leg_joints;
		
		struct Rhoban::IKWalkOutputs outputs;
		
		double engineFrequency = 50.0;

		while(ros::ok()) {
			for (double t=0.0;t<=timeLength_;t+=1.0/engineFrequency) {
				time_ += 1.0/engineFrequency;
				
				bool success = Rhoban::IKWalk::walk(
					params, 
					1.0/engineFrequency, 
					phase_, 
					outputs); 
				
				if (!success) {
					ROS_DEBUG("%.4f Inverse Kinematics error. Position not reachable\n", time_);
				} else {
					ROS_DEBUG("TIME: %.4f PHASE: %.4f ", time_, phase_);
					ROS_DEBUG("SERVO_POS: ");
					ROS_DEBUG("L: %.4f %.4f %.4f %.4f %.4f %.4f",
								outputs.left_hip_yaw, 
								outputs.left_hip_pitch, 
								outputs.left_hip_roll,
								outputs.left_knee,
								outputs.left_ankle_pitch,
								outputs.left_ankle_roll);
					ROS_DEBUG("R: %.4f %.4f %.4f %.4f %.4f %.4f",	
								outputs.right_hip_yaw, 
								outputs.right_hip_pitch, 
								outputs.right_hip_roll,
								outputs.right_knee,
								outputs.right_ankle_pitch,
								outputs.right_ankle_roll);
				}
				
				left_leg_joints.hip.y = (float)outputs.left_hip_yaw;
				left_leg_joints.hip.p = (float)outputs.left_hip_pitch;
				left_leg_joints.hip.r = (float)outputs.left_hip_roll;
				left_leg_joints.knee.y = 0.0f;
				left_leg_joints.knee.p = (float)outputs.left_knee;
				left_leg_joints.knee.r = 0.0f;
				left_leg_joints.ankle.y = 0.0f;
				left_leg_joints.ankle.p = (float)outputs.left_ankle_pitch;
				left_leg_joints.ankle.r = (float)outputs.left_ankle_roll;

				right_leg_joints.hip.y = (float)outputs.right_hip_yaw;
				right_leg_joints.hip.p = (float)outputs.right_hip_pitch;
				right_leg_joints.hip.r = (float)outputs.right_hip_roll;
				right_leg_joints.knee.y = 0.0f;
				right_leg_joints.knee.p = (float)outputs.right_knee;
				right_leg_joints.knee.r = 0.0f;
				right_leg_joints.ankle.y = 0.0f;
				right_leg_joints.ankle.p = (float)outputs.right_ankle_pitch;
				right_leg_joints.ankle.r = (float)outputs.right_ankle_roll;

				left_leg_joints_pub.publish(left_leg_joints);
				right_leg_joints_pub.publish(right_leg_joints);

				ros::spinOnce();
				rate.sleep();
			}

			time_ = 0.0;
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

