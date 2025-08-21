#! /bin/bash

<<tanu
it is my shell script
i  create a user
tanu

#user creation 
function create_user {
echo "create a new user"

read -p "create different user" userid

read -p "create a new password" password

sudo useradd -m "$userid"

echo -e "$password\n$password" | sudo passwd "$userid"
}
for (( i=1 ; i<=5 ; i++ ))

do  
	create_user
done



# user delete 
function delete_user {
sudo userdel "$userid"
}

for (( i=1 ; i<=5; i++ ))
do 
	delete_user
done

# check user exit or not
function check {
cat /etc/passwd | grep $userid | wc 
}

for (( i=1; i<=5 ; i++ ))
do
	check
done




