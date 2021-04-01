#include <ros/ros.h>
#include <rewa_hardware/dynamixel_mx28.hpp>
#include <rewa_hardware/dynamixel_ax12a.hpp>
#include <rewa_msgs/WalkOutput.h>

class ServoDriver {

	private:

	ros::Subscriber walk_output_sub;

	ros::Publisher servo_control_pub;

	rewa::DynamixelAX12A dxl_ax[2];
	rewa::DynamixelMX28 dxl_mx[10];

	public:

	ServoDriver(ros::NodeHandle &nh) {
		ROS_INFO("Started /driver_node");

		/*
		 * Set ID's for each right leg
		 * Dynamixel MX28 servos
		 */
		for(uint16_t i = 0; i < 5; i++) {
			dxl_mx[i].setServoID(i + 3);
		}
		
		/*
		 * Set ID's for each left leg
		 * Dynamixel MX28 servos
		 */
		for(uint16_t i = 0; i < 5; i++) {
			dxl_mx[i].setServoID(i + 9);
		}

		/*
		 * Set ID's for right and left hip
		 * Dynamixel AX12A servos
		 */	
		dxl_servos_ax[0].setServoID(2);
		dxl_servos_ax[1].setServoID(8);

		walk_output_sub = nh.subscribe("/walk_output", 1, 
			&ServoDriver::walkOutputCallback, this);

		servo_control_pub = nh.advertise<rewa_msgs::ControlCommandMX28>("servo_cmd", 1);
	}

	/* 
	 * Callback function for walk engine output.
	 * Called each time joint angles updated.
	 */
	void walkOutputCallback(const rewa_msgs::WalkOutput &msg) {
		dxl_ax[0].setGoalPosition(DynamixelAX12A::radianToDxl(msg.left.hip.y));
		dxl_mx[0].setGoalPosition(DynamixelMX28::radianToDxl(msg.left.hip.p));
		dxl_mx[1].setGoalPosition(DynamixelMX28::radianToDxl(msg.left.hip.r));

		dxl_mx[2].setGoalPosition(DynamixelMX28::radianToDxl(msg.left.knee.p));

		dxl_mx[3].setGoalPosition(DynamixelMX28::radianToDxl(msg.left.ankle.p));
		dxl_mx[4].setGoalPosition(DynamixelMX28::radianToDxl(msg.left.ankle.r));
		
		dxl_ax[1].setGoalPosition(DynamixelAX12A::radianToDxl(msg.right.hip.y));
		dxl_mx[5].setGoalPosition(DynamixelMX28::radianToDxl(msg.right.hip.p));
		dxl_mx[6].setGoalPosition(DynamixelMX28::radianToDxl(msg.right.hip.r));

		dxl_mx[7].setGoalPosition(DynamixelMX28::radianToDxl(msg.right.knee.p));

		dxl_mx[8].setGoalPosition(DynamixelMX28::radianToDxl(msg.right.ankle.p));
		dxl_mx[9].setGoalPosition(DynamixelMX28::radianToDxl(msg.right.ankle.r));
	}

	void run() {
		ros::Rate rate(50);

		rewa_msgs::CommandServo cmd_servo_msg;

		cmd_servo_msg.ID2.ID.dxl_servo_ax[0].getGoalPosition();

};

int main(int argc, char **argv) {
	ros::init(argc, argv, "servo_driver");
	ros::NodeHandle nh;
	
	ServoDriver sd(nh);

	ros::spin();
	return 0;
}
