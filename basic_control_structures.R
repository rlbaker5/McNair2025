# --- Do together: ---

# Make a dummy dataset
student_info <- data.frame(name = c("Bob", "Mary", "John", "Marsha"),
                           student_id = c(1, NA, NA, 4),
                           year = c(2, 1, 4, NA))

# If any students are missing an ID, print their names to the console
# Otherwise, do nothing

problem_rows <- which(is.na(student_info$student_id))

if (length(problem_rows) > 0) {
  students_missing_id <- student_info[problem_rows, ]
  cat(students_missing_id$name)
}

# --- Exercise 3: ---

# If any students are missing a year, print their names to the console
# Otherwise, print "Data looks good!" to the console

problem_rows <- which(is.na(student_info$year))

if (length(problem_rows) > 0) {
  students_missing_yr <- student_info[problem_rows, ]
  message <- paste(students_missing_yr$name, "is missing an ID")
  cat(message, sep = )
} else {
  cat("Data looks good!")
}


# --- Do together: ---
# Download iris dataset with one species per file
# Save and unzip into a "data" folder in your project folder

library(readr)

data_files <- list.files("data")

# Initialize an empty data frame for the whole dataset to go in
all_iris <- data.frame() 

for (filename in data_files) {
  species_data <- read_csv(file = file.path("data", filename))
  all_iris <- rbind(all_iris, species_data)
}

unique(all_iris$Species)


# --- Exercise 4: ---
# Read the iris data in again, except instead of iterating through the filenames, iterate through
# the vector c("setosa", "versicolor", "virginica")

all_species <- c("setosa", "versicolor", "virginica")

# Initialize an empty data frame for the whole dataset to go in
all_iris <- data.frame() 

for (species in all_species) {
  filename <- paste0(species, "_iris.csv")
  species_data <- read_csv(file = file.path("data", filename))
  all_iris <- rbind(all_iris, species_data)
}

unique(all_iris$Species)
