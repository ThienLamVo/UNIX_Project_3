#!/bin/bash

while true
do
  echo "(please enter the number of your selection below)"
  echo ""
  echo "1. Show all processess"
  echo "2. Kill a process"
  echo "3. Bring up top"
  echo "4. Return to Main Menu"
  read selection
  if [[ $selection -eq 1 ]]
  then
    while true
    do
      echo "$(ps -ef)"
      echo "Press :q to return to main menu"
      read exit
      if [[ $exit = ":q" ]]
      then
        break
      fi
    done
  elif [[ $selection -eq 2 ]]
  then
    while true
    do
      echo "Please enter the PID of the process you would like to kill:"
      read kill
      kill -9 $kill
      echo "Press :q to return to main menu"
      read exit
      if [[ $exit = ":q" ]]
      then
        break
      fi
    done
  elif [[ $selection -eq 3 ]]
  then
    while true
    do
      top
      echo "Press :q to return to main menu"
      read exit
      if [[ $exit = ":q" ]]
      then
        break
      fi
    done
  elif [[ $selection -eq 4 ]]
  then
    break
  else
    echo "Invalid input"
  fi
done 
