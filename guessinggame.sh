
#!/bin/bash

# Function to count files in current directory
count_files() {
    local count=$(ls -1 | wc -l)
    echo $count
}

# Main game function
play_game() {
    local actual_count=$(count_files)
    local user_guess
    local guess_correct=0
    
    echo "Bienvenue dans le jeu de devinette !"
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    
    # Game loop
    while [[ $guess_correct -eq 0 ]]; do
        read -p "Entrez votre estimation : " user_guess
        
        # Input validation
        if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre valide."
            continue
        fi
        
        # Check guess
        if [[ $user_guess -lt $actual_count ]]; then
            echo "Trop bas ! Essayez encore."
        elif [[ $user_guess -gt $actual_count ]]; then
            echo "Trop haut ! Essayez encore."
        else
            echo "Félicitations ! Vous avez deviné le bon nombre : $actual_count"
            guess_correct=1
        fi
    done
}

# Start the game
play_game
