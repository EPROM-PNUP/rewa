#include <rewa_hardware/dynamixel_mx28.hpp>

namespace rewa {

DynamixelMX28::DynamixelMX28() {
}

DynamixelMX28::DynamixelMX28(const uint8_t &id) {
	this->id_ = id;
}

uint16_t DynamixelMX28::radianToDxl(const float &rad) {
	return (rad * 788) + 2048;
}

void DynamixelMX28::setServoID(const uint8_t &id) {
	this->id_ = id;
}

void DynamixelMX28::setGoalPosition(const uint16_t &goal_position) {
	this->goal_position_ = goal_position;
}

void DynamixelMX28::setMovingSpeed(const uint16_t &moving_speed) {
	this->moving_speed_ = moving_speed;
}

void DynamixelMX28::setTorqueOn() {
	this->torque_ = true;
}

void DynamixelMX28::setTorqueOff() {
	this->torque_ = false;
}

uint8_t DynamixelMX28::getServoID() {
	return this->id_;
}

uint16_t DynamixelMX28::getGoalPosition() {
	return this->goal_position_;
}

uint16_t DynamixelMX28::getMovingSpeed() {
	return this->moving_speed_;
}

uint16_t DynamixelMX28::getPresentPosition() {
	return this->present_position_;
}

uint16_t DynamixelMX28::getPresentSpeed() {
	return this->present_speed_;
}

int16_t DynamixelMX28::getPresentLoad() {
	return this->present_load_;
}

bool DynamixelMX28::torqueIsOn() {
	return this->torque_;
}

bool DynamixelMX28::isMoving() {
	return this->moving_;
}

}
