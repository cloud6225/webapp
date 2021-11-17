#!/bin/bash
echo "get the proces id"
PID=`ps -eaf | grep "python" | grep -v grep | awk '{print $2}'`
echo "process id not empty ? $PID"
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  sudo kill -9 $PID
fi