#include <rewa_hardware/dynamixel_ax12a.hpp>

namespace rewa {

DynamixelAX12A::DynamixelAX12A() {
}

DynamixelAX12A::DynamixelAX12A(const uint8_t &id) {
	this->id_ = id;
}

static uint16_t DynamixelAX12A::radianToDxl(const float &rad) {
	return (rad * 197) + 512;
}

void DynamixelAX12A::setServoID(const uint8_t &id) {
	this->id_ = id;
}

void DynamixelAX12A::setGoalPosition(const uint16_t &goal_position) {
	this->goal_position_ = goal_position;
}

void DynamixelAX12A::setMovingSpeed(const uint16_t &moving_speed) {
	this->moving_speed_ = moving_speed;
}

void DynamixelAX12A::setTorqueOn() {
	this->torque_ = true;
}

void DynamixelAX12A::setTorqueOff() {
	this->torque_ = false;
}

uint8_t DynamixelAX12A::getServoID() {
	return this->id_;
}

uint16_t DynamixelAX12A::getGoalPosition() {
	return this->goal_position_;
}

uint16_t DynamixelAX12A::getMovingSpeed() {
	return this->moving_speed_;
}

uint16_t DynamixelAX12A::getPresentPosition() {
	return this->present_position_;
}

uint16_t DynamixelAX12A::getPresentSpeed() {
	return this->present_speed_;
}

int16_t DynamixelAX12A::getPresentLoad() {
	return this->present_load_;
}

bool DynamixelAX12A::torqueIsOn() {
	return this->torque_;
}

bool DynamixelAX12A::isMoving() {
	return this->moving_;
}

}
