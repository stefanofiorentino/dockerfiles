#!/bin/bash

# Initialize a mongo data folder and logfile
mkdir -p /data/db

# Start mongodb 
mongod &

# Wait mongo for 10 sec
sleep 10

# Restore from dump
mongorestore --drop --db mp /home/dump/mp

# Keep container running
tail -f /dev/null