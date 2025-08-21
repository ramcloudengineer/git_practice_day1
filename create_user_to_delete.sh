#! /bin/bash


function create_user{

echo "user creation start"
read -p "user delete name" username


sudo userdel $username
}
create_user

