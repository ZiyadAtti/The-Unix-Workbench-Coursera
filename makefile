all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Date and Time" >> README.md
	echo "Make was run on: $$(date)" >> README.md
	echo "" >> README.md
	echo "## Lines of Code" >> README.md
	echo "The number of lines in guessinggame.sh is: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
