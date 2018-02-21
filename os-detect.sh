#!/bin/bash

isLinux () {
  if [[ $(uname -s) == *"Linux"* ]]
  then
    return 0
  else
    return 1
  fi
}

isMac () {
  if [[ $(uname -s) == *"Darwin"* ]]
  then
    return 0
  else
    return 1
  fi
}
