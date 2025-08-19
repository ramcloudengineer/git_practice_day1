#! /bin/bash

<<info
this is explanation of function
info

function create_user {
read -p "enter the user name :" username

sudo useradd -m $username

echo "user creation sucessfully"
}



create_user
create_user
create_user
