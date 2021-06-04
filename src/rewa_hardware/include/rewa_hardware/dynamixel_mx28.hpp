#ifndef DXLMX28
#define DXLMX28

#include <cstdint>

namespace rewa {

class DynamixelMX28 {

	private:
	
	uint8_t id_;
	
	uint16_t goal_position_;
	uint16_t moving_speed_;
	uint16_t present_position_;
	uint16_t present_speed_;
	
	int16_t present_load_;
	
	bool torque_;
	bool moving_;

	public:
	
	DynamixelMX28();
	DynamixelMX28(const uint8_t &id);
	
	static uint16_t radianToDxl(const float &rad);

	void setServoID(const uint8_t &id);
	void setGoalPosition(const uint16_t &goal_position);
	void setMovingSpeed(const uint16_t &moving_speed);
	void setTorqueOn();
	void setTorqueOff();
	
	uint8_t getServoID();

	uint16_t getGoalPosition();
	uint16_t getMovingSpeed();
	uint16_t getPresentPosition();
	uint16_t getPresentSpeed();

	int16_t getPresentLoad();
	
	bool torqueIsOn();
	bool isMoving();

};

}

#endif
