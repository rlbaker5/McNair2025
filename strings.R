# --- Do together: ---

# Load the packages we need
library(stringr)
library(readr)

# Read in data
much_ado <- readr::read_file("https://www.gutenberg.org/cache/epub/1519/pg1519.txt")

# Split the text into a vector where each element is one word
much_ado_vec <- str_split(much_ado, boundary("word"))
str(much_ado_vec)  # Close, but it's a list...
much_ado_vec <- much_ado_vec[[1]]  # Better!
str(much_ado_vec)

# Make a dataframe - we'll add more columns later
much_ado_df <- data.frame(words = much_ado_vec)

# --- Exercise 1: ---

# Add a column to much_ado_df called word_length that contains the length of each word in the words column
much_ado_df$word_length <- str_length(much_ado_df$words)

# Add a column to much_ado_df called first_letter that contains the first letter of each word
much_ado_df$first_letter <- str_sub(much_ado_df$words, 1, 1)


# --- Exercise 2: ---

# How many times do variations of the word "love" appear in the play?
love <- str_subset(much_ado_df$words, "love")

# How many unique variations are there?
unique(love)

# What about words like "glove?"
love <- str_subset(much_ado_df$words, "^love")

# But wait, what about words where the L is uppercase?
love <- str_subset(much_ado_df$words, "^[lL]ove")
# or
lowercase_words <- str_to_lower(much_ado_df$words)
love <- str_subset(lowercase_words, "^love")
