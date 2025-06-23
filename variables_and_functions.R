# Just some basic code for demo purposes

circle_area <- function(radius) {
  
  # calculate the area of a circle, given the radius
  # note: the value of pi comes built-in with R
  area <- pi * (radius ^ 2)
  
  return(area)
}

madlibs <- function(past_tense_verb, place, object, feeling, exclamation) {
  
  story <- paste0("This morning I woke up, and ", past_tense_verb, " to ", place,
                    ". To my surprise, I found ", object, " there! ", "Unable to contain my ",
                  feeling, ", I yelled '", exclamation, "!'")
  
  return(story)
}

circle_area(5)

circle_area(radius = 5)

my_area <- circle_area(radius = 5)

madlibs(past_tense_verb = "jumped",
        place = "the pond",
        object = "a croissant",
        feeling = "schadenfreude",
        exclamation = "ughh")

# Character vector
bird_species <- c("Turdus migratorius", "Spinus pinus", "Branta canadensis")
# Numeric vector
bird_counts <- c(122, 19, 534)
# Logical vector
nesting_behavior <- c(TRUE, FALSE, TRUE)


birds <- data.frame(sci_names = bird_species,
                    n_observed = bird_counts,
                    nesting = nesting_behavior)

any(nesting_behavior)
all(nesting_behavior)
