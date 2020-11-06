all: README.md

README.md: guessinggame.sh
	
	echo "#Peer-graded assignment">README.md
	echo -n "\n**The file was run at** ">>README.md
	date>>README.md
	echo -n "\n**Number of lines in guessinggame.sh are :**">>README.md
	grep -c '' guessinggame.sh>>README.md
