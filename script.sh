#!/bin/bash

sudo cp nanti.csv "/home"

#create skel
cd /etc/skel
sudo mkdir Documents Téléchargements Projets
cd /home

# Create shared folders
sudo mkdir -p sharedFolderForChief
sudo mkdir -p sharedFolderForAll
sudo chmod 770 sharedFolderForChief
sudo chmod 777 sharedFolderForAll

sudo groupadd "chief"
sudo chown :"chief" "/home/sharedFolderForChief"

c=1

# Read the CSV file line by line
while IFS=";" read -r forename name password departmentfile
do
	if [ $c -eq 0 ]
	then 
		# Generate username
		username=$(echo "${forename:0:1}${name}" | tr 'A-Z' 'a-z' | sed -e 's/ //g' | cut -c1-8)

		department=$(echo "$departmentfile" | sed -e 's/ //g' | sed -e 's/.$//')

		# Check if the group exists, create if not
		if ! getent group "$department" &>/dev/null;
		then
			sudo groupadd "$department"

			sudo mkdir -p "/home/$department"
			sudo chmod 770 "/home/$department"
			sudo chown :"$department" "/home/$department"

			sudo mkdir -p "/home/$department/sharedFolder"
			sudo chmod 770 "/home/$department/sharedFolder"
			sudo chown :"$department" "/home/$department/sharedFolder"

			echo "Group $department created."
			newGroup=true
		fi

		# Check if the user already exists
		count=1
		while id "$username" &>/dev/null;
		do
			if [ ! $count -eq 1 ]
			then	
				username="${username:0:-2}"
			fi
			username="${username}$(printf "%02d" $count)"
			((count++))
		done

		# Create user with password, add to group and create the directory
		sudo useradd -m -p "$(openssl passwd -1 $password)" -s /bin/bash -d "/home/$department/$username" -G "$department" "$username"
		echo "User $username created with password $password and added to group $department"

		if [ $newGroup == true ]
		then 
			sudo usermod -g "chief" "$username"
			newGroup=false
		fi

		# Modify the directory
		sudo chmod 700 "/home/$department/$username"
		sudo chown "$username":"$department" "/home/$department/$username"
		echo "Home folder /home/$department/$username created."
	else
		c=0
	fi

done < $1
