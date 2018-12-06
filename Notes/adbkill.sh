#!/bin/bash

adb shell kill `adb shell ps | grep $1 | awk {'print $2'} | head -n 1`;
