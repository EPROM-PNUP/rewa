#include <ros/ros.h>
#include <rewa_hardware/dynamixel_mx28.hpp>
#include <rewa_hardware/dynamixel_ax12.hpp>
#include <rewa_msgs/WalkOutput.h>
#include <rewa_msgs/CommandServo.h>

class ServoDriver {

	private:

	ros::Subscriber walk_output_sub;
	ros::Publisher ctl_servo_pub;

	rewa::DynamixelAX12 HEAD_J0;
	rewa::DynamixelAX12 HEAD_J1;

	rewa::DynamixelAX12 LARM_J0;
	rewa::DynamixelAX12 LARM_J1;
	rewa::DynamixelAX12 LARM_J2;

	rewa::DynamixelAX12 RARM_J0;
	rewa::DynamixelAX12 RARM_J1;
	rewa::DynamixelAX12 RARM_J2;

	rewa::DynamixelAX12 LLEG_J0;
	rewa::DynamixelMX28 LLEG_J1;
	rewa::DynamixelMX28 LLEG_J2;
	rewa::DynamixelMX28 LLEG_J3;
	rewa::DynamixelMX28 LLEG_J4;
	rewa::DynamixelMX28 LLEG_J5;
	
	rewa::DynamixelAX12 RLEG_J0;
	rewa::DynamixelMX28 RLEG_J1;
	rewa::DynamixelMX28 RLEG_J2;
	rewa::DynamixelMX28 RLEG_J3;
	rewa::DynamixelMX28 RLEG_J4;
	rewa::DynamixelMX28 RLEG_J5;

	public:

	ServoDriver(ros::NodeHandle &nh) {
		ROS_INFO("Running /driver_node");
		
		LLEG_J0.setServoID(2);
		LLEG_J1.setServoID(3);
		LLEG_J2.setServoID(4);
		LLEG_J3.setServoID(5);
		LLEG_J4.setServoID(6);
		LLEG_J5.setServoID(7);

		RLEG_J0.setServoID(8);
		RLEG_J1.setServoID(9);
		RLEG_J2.setServoID(10);
		RLEG_J3.setServoID(11);
		RLEG_J4.setServoID(12);
		RLEG_J5.setServoID(13);

		walk_output_sub = nh.subscribe("/walk_output", 1, 
			&ServoDriver::walkOutputCallback, this);

		ctl_servo_pub = nh.advertise<rewa_msgs::CommandServo>("servo_cmd", 10);
	}

	void walkOutputCallback(const rewa_msgs::WalkOutput &msg) {
		LLEG_J0.setGoalPosition(rewa::DynamixelAX12::radianToDxl(msg.left.hip.y));
		LLEG_J1.setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.left.hip.p));
		LLEG_J2.setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.left.hip.r));

		LLEG_J3.setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.left.knee.p));

		LLEG_J4.setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.left.ankle.p));
		LLEG_J5.setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.left.ankle.r));
		
		RLEG_J0.setGoalPosition(rewa::DynamixelAX12::radianToDxl(msg.right.hip.y));
		RLEG_J1.setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.right.hip.p));
		RLEG_J2.setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.right.hip.r));

		RLEG_J3.setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.right.knee.p));

		RLEG_J4.setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.right.ankle.p));
		RLEG_J5.setGoalPosition(rewa::DynamixelMX28::radianToDxl(msg.right.ankle.r));
	}

	void run() {
		while(ros::ok()) {
			ros::Rate rate(50);

			rewa_msgs::CommandServo cmd_servo_msg;

			cmd_servo_msg.ID2.goalpos = LLEG_J0.getGoalPosition();
			cmd_servo_msg.ID3.goalpos = LLEG_J1.getGoalPosition();
			cmd_servo_msg.ID4.goalpos = LLEG_J2.getGoalPosition();
			cmd_servo_msg.ID5.goalpos = LLEG_J3.getGoalPosition();
			cmd_servo_msg.ID6.goalpos = LLEG_J4.getGoalPosition();
			cmd_servo_msg.ID7.goalpos = LLEG_J5.getGoalPosition();

			cmd_servo_msg.ID8.goalpos = RLEG_J0.getGoalPosition();
			cmd_servo_msg.ID9.goalpos = RLEG_J1.getGoalPosition();
			cmd_servo_msg.ID10.goalpos = RLEG_J2.getGoalPosition();
			cmd_servo_msg.ID11.goalpos = RLEG_J3.getGoalPosition();
			cmd_servo_msg.ID12.goalpos = RLEG_J4.getGoalPosition();
			cmd_servo_msg.ID13.goalpos = RLEG_J5.getGoalPosition();

			ctl_servo_pub.publish(cmd_servo_msg);

			ros::spinOnce();

			rate.sleep();
		}
	}
};

int main(int argc, char **argv) {
	ros::init(argc, argv, "servo_driver");
	ros::NodeHandle nh;
	
	ServoDriver servo_driver(nh);

	servo_driver.run();

	return 0;
}
