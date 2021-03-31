#include <rewa_hardware/dynamixel_mx28.hpp>

namespace rewa {

DynamixelMX28::DynamixelMX28() {
}

DynamixelMX28::DynamixelMX28(const short int &id) {
	this->id_ = id;
}

void DynamixelMX28::setServoID(const short int &id) {
	this->id_ = id;
}

void DynamixelMX28::setGoalPosition(const unsigned short int &goal_position) {
	this->goal_position_ = goal_position;
}

void DynamixelMX28::setMovingSpeed(const unsigned short int &moving_speed) {
	this->moving_speed_ = moving_speed;
}

void DynamixelMX28::setTorqueOn() {
	this->torque_ = true;
}

void DynamixelMX28::setTorqueOff() {
	this->torque_ = false;
}

unsigned short int DynamixelMX28::getPresentPosition() {
	return this->present_position_;
}

unsigned short int DynamixelMX28::getPresentSpeed() {
	return this->present_speed_;
}

short int DynamixelMX28::getPresentLoad() {
	return this->present_load_;
}

bool DynamixelMX28::torqueIsOn() {
	return this->torque_;
}

bool DynamixelMX28::isMoving() {
	return this->moving_;
}

}
