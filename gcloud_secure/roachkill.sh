#!/bin/sh
ps -ef | grep roach | grep -v grep | awk '{print $2}' | xargs kill -9