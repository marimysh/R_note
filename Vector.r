poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday:
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Total winnings with poker
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)

# Check if you realized higher total gains in poker than in roulette 
answer <- total_poker > total_roulette

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]
poker_midweek <- poker_vector[c(2,3,4)]
roulette_selection_vector <- roulette_vector[2:5]

average_midweek_gain <- mean(poker_vector[c("Monday", "Tuesday", "Wednesday")])

# What days of the week did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]