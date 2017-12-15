#!/bin/bash

USER=root tightvncserver $DISPLAY $VNCSERVER_OPTIONS

tail -f /dev/null