#!/usr/bin/env bash

#This script checks to see if ssh-agent is running
#If not, it will start the agent, and add my keys
#If it is running it will stop all agents, restart one, and then add keys


#stop all agents
pkill ssh-agent

#start an agent
eval "$(ssh-agent -s)"

#add my key
ssh-add ~/.ssh/ttcogkey
