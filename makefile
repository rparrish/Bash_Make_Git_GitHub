all: readme.md
 
readme.md: 
	echo "# Unix Workbench: Bash, Make, Git and GitHub\n" > readme.md
	echo "makefile run at: `date`" >> readme.md
	echo "guessinggame.sh has `wc -l guessinggame.sh | egrep -o "[0-9]+"` lines of code." >> readme.md
  
clean:
	rm readme.md
	