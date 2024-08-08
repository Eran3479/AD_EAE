# Load necessary libraries
library(dplyr)

# Load the data
data <- read.csv('online_course_engagement_data.csv')

# Function to normalize columns
normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

# Normalize the specified columns
data <- data %>%
  mutate(TimeSpentOnCourse = normalize(TimeSpentOnCourse),
         NumberOfVideosWatched = normalize(NumberOfVideosWatched),
         NumberOfQuizzesTaken = normalize(NumberOfQuizzesTaken),
         QuizScores = normalize(QuizScores),
         CompletionRate = normalize(CompletionRate))

# View the normalized data
head(data)
