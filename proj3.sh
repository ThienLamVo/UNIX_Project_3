#!/bin/bash

while true
do
  echo $(date)
  echo "-------------------------"
  echo "Main Menu"
  echo "-------------------------"
  echo "1. Operating system info"
  echo "2. Hostname and DNS info"
  echo "3. Network info"
  echo "4. Who is online"
  echo "5. Last logged in users"
  echo "6. My IP address"
  echo "7. My disk usage"
  echo "8. My home file-tree"
  echo "9. Process operations"
  echo "10. Exit"
  echo "Enter your choice [ 1 - 10 ]"
  read choice
  if [[ $choice -eq 1 ]] 
  then
    while true
    do
      echo "-------------------------"
      echo "System information"
      echo "-------------------------"
      echo "Operating system : $(uname)"
      echo "$(/usr/bin/lsb_release -a)"
      echo "Press [Enter] key to continue..."
      read enter
      if [[ $enter = "" ]]
      then
        break
      fi
    done
  elif [[ $choice -eq 2 ]]
  then 
    while true
    do
      echo "-------------------------"
      echo "Hostname and DNS information"
      echo "-------------------------"
      echo "Press [Enter] key to continue..."
      read enter
      if [[ $enter = "" ]]
      then
        break
      fi
    done
  elif [[ $choice -eq 3 ]]
  then
    while true
    do
      echo "-------------------------"
      echo "Network information"
      echo "-------------------------"
      echo "Press [Enter] key to continue..."
      read enter
      if [[ $enter = "" ]]
      then
        break
      fi
    done 
  elif [[ $choice -eq 4 ]]
  then
    while true
    do
      echo "-------------------------"
      echo "Who is online"
      echo "-------------------------"
      echo "Press [Enter] key to continue..."
      read enter
      if [[ $enter = "" ]]
      then
        break
      fi
    done 
  elif [[ $choice -eq 5 ]]
  then
    while true
    do
      echo "-------------------------"
      echo "List of last logged in users"
      echo "-------------------------"
      echo "Press [Enter] key to continue..."
      read enter
      if [[ $enter = "" ]]
      then
        break
      fi
    done 
  elif [[ $choice -eq 6 ]]
  then
    while true
    do
      echo "-------------------------"
      echo "Public IP information"
      echo "-------------------------"
      echo "Press [Enter] key to continue..."
      read enter
      if [[ $enter = "" ]]
      then
        break
      fi
    done 
  elif [[ $choice -eq 7 ]]
  then
    while true
    do
      echo "-------------------------"
      echo "Disk Usage Info"
      echo "-------------------------"
      echo "Press [Enter] key to continue..."
      read enter
      if [[ $enter = "" ]]
      then
        break
      fi
    done 
  elif [[ $choice -eq 8 ]]
  then
    while true
    do
      echo "Attempting to create home file-tree"
      ./proj1.sh /home/ ./filetree.html
      echo "Press [Enter] key to continue..."
      read enter
      if [[ $enter = "" ]]
      then
        break
      fi
    done 
  elif [[ $choice -eq 9 ]]
  then
    while true
    do
      echo "Press [Enter] key to continue..."
      read enter
      if [[ $enter = "" ]]
      then
        break
      fi
    done 
  elif [[ $choice -eq 10 ]]
  then
    exit
  else
    echo "Not a valid input"
  fi
done
