#!/bin/bash

yes=y

function add_to_bashrc {
	if [ -f ~/.bashrc ];
	then
		SOURCE_EXISTS=`grep -E 'source ~/.custom_bash_aliases.*' ~/.bashrc`

		if [ -z "$SOURCE_EXISTS" ];
		then
			echo "source ~/.custom_bash_aliases" >> ~/.bashrc
		fi
	elif [ -f /etc/bash.bashrc ];
	then
		SOURCE_EXISTS=`grep -E 'source ~/.custom_bash_aliases.*' /etc/bash.bashrc`

		if [ -z "$SOURCE_EXISTS" ];
		then
			echo "source ~/.custom_bash_aliases" >> /etc/bash.bashrc
		fi
	fi
}

if [ -f ~/.bash_aliases ];
then
	if [ -f ~/.custom_bash_aliases ];
	then
		read -p "Overwrite ~/.custom_bash_aliases?[y/n]: " choice

		if [ "$choice" == "$yes" ];
		then
			echo -e "Overwriting ~/.custom_bash_aliases"
			cp .bash_aliases ~/.custom_bash_aliases
			add_to_bashrc
		fi
	else
		cp .bash_aliases ~/.custom_bash_aliases
		add_to_bashrc
	fi
else
	cp .bash_aliases ~
fi

if [ -f ~/.vimrc ];
then
	read -p "Overwrite ~/.vimrc?[y/n]: " choice
	
	if [ "$choice" == "$yes" ];
	then
		echo -e "Overwriting ~/.vimrc"
		cp .vimrc ~ 
	fi
else
		cp .vimrc ~ 
fi
