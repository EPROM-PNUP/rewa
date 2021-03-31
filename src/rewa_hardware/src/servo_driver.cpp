#include <ros/ros.h>
#include <rewa_hardware/dynamixel_mx28.hpp>
#include <rewa_hardware/dynamixel_ax12a.hpp>
#include <rewa_msgs/WalkOutput.h>

class ServoDriver {

	private:

	ros::Subscriber walk_output_sub;

	rewa::DynamixelAX12A dxl_servos_ax[2];
	rewa::DynamixelMX28 dxl_servos_mx[10];

	public:

	ServoDriver(ros::NodeHandle &nh) {
		/*
		 * Set ID's for each right leg
		 * Dynamixel MX28 servos
		 */
		for(unsigned short int i = 0; i < 5; i++) {
			dxl_servos_mx[i].setServoID(i + 3);
		}
		
		/*
		 * Set ID's for each left leg
		 * Dynamixel MX28 servos
		 */
		for(unsigned short int i = 0; i < 5; i++) {
			dxl_servos_mx[i].setServoID(i + 9);
		}

		/*
		 * Set ID's for right and left hip
		 * Dynamixel AX12A servos
		 */	
		dxl_servos_ax[0].setServoID(2);
		dxl_servos_ax[1].setServoID(8);

		walk_output_sub = nh.subscribe("/walk_output", 1, 
			&ServoDriver::walk_output_callback, this);
	}

	// Radian to Dynamixel MX28 converter
	unsigned short int rad2dxl_mx28(const float &rad) {
		short int dxl_pos = rad * 788;
		dxl_pos = dxl_pos + 2048;

		return dxl_pos;
	}
	
	// Radian to Dynamixel AX12A converter
	unsigned short int rad2dxl_ax12a(const float &rad) {
		short int dxl_pos = rad * 197;
		dxl_pos = dxl_pos + 512;

		return dxl_pos;
	}

	void walk_output_callback(const rewa_msgs::WalkOutput &msg) {
		dxl_servos_ax[0].setGoalPosition(rad2dxl_ax12a(msg.left.hip.y));
		dxl_servos_ax[1].setGoalPosition(rad2dxl_ax12a(msg.right.hip.y));
		dxl_servos_mx[0].setGoalPosition(rad2dxl_mx28(msg.left.hip.p));
		dxl_servos_mx[1].setGoalPosition(rad2dxl_mx28(msg.left.hip.r));
		dxl_servos_mx[2].setGoalPosition(rad2dxl_mx28(msg.left.knee.p));
		dxl_servos_mx[3].setGoalPosition(rad2dxl_mx28(msg.left.ankle.p));
		dxl_servos_mx[4].setGoalPosition(rad2dxl_mx28(msg.left.ankle.r));
		dxl_servos_mx[5].setGoalPosition(rad2dxl_mx28(msg.right.hip.p));
		dxl_servos_mx[6].setGoalPosition(rad2dxl_mx28(msg.right.hip.r));
		dxl_servos_mx[7].setGoalPosition(rad2dxl_mx28(msg.right.knee.p));
		dxl_servos_mx[8].setGoalPosition(rad2dxl_mx28(msg.right.ankle.p));
		dxl_servos_mx[9].setGoalPosition(rad2dxl_mx28(msg.right.ankle.r));
	}

};

int main(int argc, char **argv) {
	ros::init(argc, argv, "servo_driver");
	ros::NodeHandle nh;
	
	ServoDriver sd(nh);

	ros::spin();
	return 0;
}
