# The first element: US, the second element: Non-US 
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Add your code below to Construct matrix from 3 vectors
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), byrow = TRUE, nrow = 3)

# Add your code here such that rows and columns of star_wars_matrix have a name!
rownames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
colnames(star_wars_matrix) <- c("US", "non-US")

worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)

total_revenue_vector <- colSums(all_wars_matrix)

# Average non-US revenue per movie
# Coll 2
non_us_all  <-   mean(star_wars_matrix[,2])
  
# Average non-US revenue of first two movies
# Coll 2, Row 1-2
non_us_some <- mean(star_wars_matrix[c(1,2),2])

# Estimation of visitors
visitors <- star_wars_matrix / 5

ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# Estimated number of visitors
visitors <- star_wars_matrix / ticket_prices_matrix

# Average number of US visitors
average_us_visitors <- mean(visitors[,1])

# Average number of non-US visitors
average_non_us_visitors <- mean(visitors[,2])