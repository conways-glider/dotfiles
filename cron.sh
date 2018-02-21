#!/bin/bash

# install new cron file
echo "installing cron jobs"
echo "PATH=$(echo $PATH)" | cat - crontab > mycron
crontab mycron
rm mycron
