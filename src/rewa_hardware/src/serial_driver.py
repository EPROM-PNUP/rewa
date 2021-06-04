#!/usr/bin/env python3

import pyserial

_PORT = "/dev/ttyS0"
_BAUDRATE = 1000000
_TIMEOUT = 1

class SerialDriver:
	
	def __init__(self):
		ser = serial.Serial(_PORT, _BAUDRATE, _TIMEOUT)
		time.sleep(3)

	def _send_data(data)
