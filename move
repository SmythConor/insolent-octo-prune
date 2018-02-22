#!/bin/bash

yes=y

if [ -f ~/.bash_aliases ];
then
	if [ -f ~/.custom_bash_aliases ];
	then
		read -p "Overwrite ~/.custom_bash_aliases?[y/n]: " choice

		if [ "$choice" == "$yes" ];
		then
			echo -e "Overwriting ~/.custom_bash_aliases"
			cp .bash_aliases ~/.custom_bash_aliases
			echo -e "Remember to source ~/.custom_bash_aliases in your ~/.bashrc"
		fi
	else
		cp .bash_aliases ~/.custom_bash_aliases
		echo -e "Remember to source ~/.custom_bash_aliases in your ~/.bashrc"
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
