#ifndef DXLAX12A
#define DXLAX12A

namespace rewa {

class DynamixelAX12A {

	private:
	
	short int id_;
	
	unsigned short int goal_position_;
	unsigned short int moving_speed_;
	unsigned short int present_position_;
	unsigned short int present_speed_;
	
	short int present_load_;
	
	bool torque_;
	bool moving_;

	public:
	
	DynamixelAX12A(const short int &id);
	
	void setGoalPosition(const unsigned short int &goal_position);
	void setMovingSpeed(const unsigned short int &moving_speed);
	void setTorqueOn();
	void setTorqueOff();
	
	unsigned short int getPresentPosition();
	unsigned short int getPresentSpeed();
	short int getPresentLoad();
	
	bool torqueIsOn();
	bool isMoving();

};

}

#endif
