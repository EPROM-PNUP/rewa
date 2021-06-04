#include <rewa_hardware/dynamixel_ax12.hpp>

namespace rewa {

DynamixelAX12::DynamixelAX12() {
}

DynamixelAX12::DynamixelAX12(const uint8_t &id) {
	this->id_ = id;
}

uint16_t DynamixelAX12::radianToDxl(const float &rad) {
	return (rad * 197) + 512;
}

void DynamixelAX12::setServoID(const uint8_t &id) {
	this->id_ = id;
}

void DynamixelAX12::setGoalPosition(const uint16_t &goal_position) {
	this->goal_position_ = goal_position;
}

void DynamixelAX12::setMovingSpeed(const uint16_t &moving_speed) {
	this->moving_speed_ = moving_speed;
}

void DynamixelAX12::setTorqueOn() {
	this->torque_ = true;
}

void DynamixelAX12::setTorqueOff() {
	this->torque_ = false;
}

uint8_t DynamixelAX12::getServoID() {
	return this->id_;
}

uint16_t DynamixelAX12::getGoalPosition() {
	return this->goal_position_;
}

uint16_t DynamixelAX12::getMovingSpeed() {
	return this->moving_speed_;
}

uint16_t DynamixelAX12::getPresentPosition() {
	return this->present_position_;
}

uint16_t DynamixelAX12::getPresentSpeed() {
	return this->present_speed_;
}

int16_t DynamixelAX12::getPresentLoad() {
	return this->present_load_;
}

bool DynamixelAX12::torqueIsOn() {
	return this->torque_;
}

bool DynamixelAX12::isMoving() {
	return this->moving_;
}

}
