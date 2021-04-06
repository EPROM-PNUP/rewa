#include <ros/ros.h>
#include <rewa_hardware/dynamixel_mx28.hpp>
#include <rewa_hardware/dynamixel_ax12.hpp>
#include <rewa_msgs/WalkOutput.h>
#include <rewa_msgs/CommandServo.h>

class ServoDriver {

	private:

	ros::Subscriber walk_output_sub;
	ros::Publisher servo_control_pub;

	rewa::DynamixelAX12 dxl_ax[2];
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
		dxl_ax[0].setServoID(2);
		dxl_ax[1].setServoID(8);

		walk_output_sub = nh.subscribe("/walk_output", 1, 
			&ServoDriver::walkOutputCallback, this);

		servo_control_pub = nh.advertise<rewa_msgs::CommandServo>("servo_cmd", 10);
	}

	/* 
	 * Callback function for walk engine output.
	 * Called each time joint angles updated.
	 */
	void walkOutputCallback(const rewa_msgs::WalkOutput &msg) {
		// Left hip servos
		dxl_ax[0].setGoalPosition(rewa::DynamixelAX12::radianToDxl(msg.left.hip.y));
		dxl_mx[0].setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.left.hip.p));
		dxl_mx[1].setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.left.hip.r));

		// Left knee servo
		dxl_mx[2].setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.left.knee.p));

		// Left ankle servos
		dxl_mx[3].setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.left.ankle.p));
		dxl_mx[4].setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.left.ankle.r));
		
		// Right hip servos
		dxl_ax[1].setGoalPosition(rewa::DynamixelAX12::radianToDxl(msg.right.hip.y));
		dxl_mx[5].setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.right.hip.p));
		dxl_mx[6].setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.right.hip.r));

		// Right knee servo
		dxl_mx[7].setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.right.knee.p));

		// Right ankle srvos
		dxl_mx[8].setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.right.ankle.p));
		dxl_mx[9].setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.right.ankle.r));
	}

	void run() {
		while(ros::ok()) {
			ros::Rate rate(50);

			rewa_msgs::CommandServo cmd_servo_msg;

			cmd_servo_msg.ID2.goalpos = dxl_ax[0].getGoalPosition();
			cmd_servo_msg.ID3.goalpos = dxl_mx[0].getGoalPosition();
			cmd_servo_msg.ID4.goalpos = dxl_mx[1].getGoalPosition();
			cmd_servo_msg.ID5.goalpos = dxl_mx[2].getGoalPosition();
			cmd_servo_msg.ID6.goalpos = dxl_mx[3].getGoalPosition();
			cmd_servo_msg.ID7.goalpos = dxl_mx[4].getGoalPosition();

			cmd_servo_msg.ID8.goalpos = dxl_ax[1].getGoalPosition();
			cmd_servo_msg.ID9.goalpos = dxl_mx[5].getGoalPosition();
			cmd_servo_msg.ID10.goalpos = dxl_mx[6].getGoalPosition();
			cmd_servo_msg.ID11.goalpos = dxl_mx[7].getGoalPosition();
			cmd_servo_msg.ID12.goalpos = dxl_mx[8].getGoalPosition();
			cmd_servo_msg.ID13.goalpos = dxl_mx[9].getGoalPosition();

			servo_control_pub.publish(cmd_servo_msg);

			ros::spinOnce();

			rate.sleep();
		}
	}
};

int main(int argc, char **argv) {
	ros::init(argc, argv, "servo_driver");
	ros::NodeHandle nh;
	
	ServoDriver sd(nh);

	sd.run();

	return 0;
}
