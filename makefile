all: README.md

README.md: guessinggame.sh
	
	echo "### Peer-graded assignment">README.md
	echo -n "##Made on: ">>README.md
	date>>README.md
	echo -n "#Number of lines in guessinggame.sh:">>README.md
	grep -c '' guessinggame.sh>>README.md
clean:
	rm README.md
