#!/bin/bash
####### Script to manage user accounts ############################
if [[ "$1" == "--create" ]]; ### To create the user account
then
        read -p "Enter username:" username
        read -s -p "Enter Password:" password
        if id "$username" &>/dev/null;
        then
                echo "User account already exists"
        else
           echo "Adding a user"
           sudo useradd -m $username
           echo -e "$password\n$password" | sudo passwd $username
           echo "User $usrname created successfully"
        fi
elif [[ "$1" == "--delete" ]];
then
    read -p "Enter Username:" username
        if id "$username" &>/dev/null;
        then
                echo " Deleting the user account"
                sudo userdel $username
                echo " User account deleted successfully"
        else
                echo "User $username does not exist or was deleted already"
        fi
elif [[ "$1" == "--reset" ]]
then
        read -p "Enter username for which password needs reset:" username
        if id "$username" &>/dev/null;
        then
                read -s -p "Enter the new Password :" password
                echo -e "$password\n$password" | sudo passwd $username
                echo "Password reset successfully"
        else
                echo "User does not exists"
        fi

elif [[ "$1" == "--list" ]];
then
        awk -F: '$3 >= 1000 { print $1 }' /etc/passwd


elif [[ "$1" == "--help" ]];
then
        echo "-- create , This flag is used to create new user account in the system"
        echo "--delete , This flag is used to delete the existing user account"
        echo "--reset, This flag is used to reset the password of the existing user"
        echo "--list , This flag displays the existing user accounts"


fi