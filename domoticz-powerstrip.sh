#!/bin/bash
#Update PowerStrip Outlet Status and Update Domoticz
PowerStrip0_1=$(sispmctl -q -n 1)
curl -s "http://127.0.0.1:8077/json.htm?type=command&param=udevice&idx=2&nvalue=$PowerStrip0_1"
PowerStrip0_2=$(sispmctl -q -n -g2)
curl -s "http://127.0.0.1:8077/json.htm?type=command&param=udevice&idx=3&nvalue=$PowerStrip0_2"
PowerStrip0_3=$(sispmctl -q -n -g3)
curl -s "http://127.0.0.1:8077/json.htm?type=command&param=udevice&idx=4&nvalue=$PowerStrip0_3"
PowerStrip0_4=$(sispmctl -q -n -g4)
curl -s "http://127.0.0.1:8077/json.htm?type=command&param=udevice&idx=5&nvalue=$PowerStrip0_4"
