yes=y

if [ -f ~/.bash_aliases ];
then
	read -p "Overwrite ~/.bash_aliases?[y/n]: " choice

	if [ "$choice" == "$yes" ];
	then
		echo -e "Overwriting ~/.bash_aliases"
		cp .bash_aliases ~
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
