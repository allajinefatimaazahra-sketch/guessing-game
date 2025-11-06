# Makefile for guessing game project

.PHONY: all clean

all: README.md

README.md: guessinggame.sh
	@echo "# Jeu de Devinette - Projet Unix" > README.md
	@echo "" >> README.md
	@echo "**Date de génération :** $$(date)" >> README.md
	@echo "" >> README.md
	@echo "**Nombre de lignes de code dans guessinggame.sh :** $$(wc -l < guessinggame.sh)" >> README.md
	@echo "" >> README.md
	@echo "## Description du projet" >> README.md
	@echo "Ce projet est un jeu simple où l'utilisateur doit deviner le nombre de fichiers dans le répertoire courant." >> README.md
	@echo "" >> README.md
	@echo "## Comment jouer" >> README.md
	@echo "Exécutez la commande \`bash guessinggame.sh\` et suivez les instructions." >> README.md

clean:
	rm -f README.md
