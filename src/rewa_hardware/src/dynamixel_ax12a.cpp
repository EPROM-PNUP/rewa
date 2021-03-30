#include <rewa_hardware/dynamixel_ax12a.hpp>

namespace rewa {

DynamixelAX12A::DynamixelAX12A(const short int &id) {
	this->id_ = id;
}

void DynamixelAX12A::setGoalPosition(const unsigned short int &goal_position) {
	this->goal_position_ = goal_position;
}

void DynamixelAX12A::setMovingSpeed(const unsigned short int &moving_speed) {
	this->moving_speed_ = moving_speed;
}

void DynamixelAX12A::setTorqueOn() {
	this->torque_ = true;
}

void DynamixelAX12A::setTorqueOff() {
	this->torque_ = false;
}

unsigned short int DynamixelAX12A::getPresentPosition() {
	return this->present_position_;
}

unsigned short int DynamixelAX12A::getPresentSpeed() {
	return this->present_speed_;
}

short int DynamixelAX12A::getPresentLoad() {
	return this->present_load_;
}

bool DynamixelAX12A::torqueIsOn() {
	return this->torque_;
}

bool DynamixelAX12A::isMoving() {
	return this->moving_;
}

}
