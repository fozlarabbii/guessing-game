README = README.md
SCRIPT = guessinggame.sh


all: $(README)


$(README): $(SCRIPT)
	echo "# Guessing Game Project" > $(README)
	echo "Date and Time: $(shell date)" >> $(README)
	echo "Lines of Code in guessinggame.sh: $(shell wc -l < $(SCRIPT))" >> $(README)


clean:
	rm -f $(README)
