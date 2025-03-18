# Load library
library(dplyr)
library(ggplot2)

# Membaca dataset
data <- read.csv("C:/Users/Grace/Pictures/SQL/StudentsPerformance.csv")

# Melihat struktur data
str(data)
summary(data)


# Analisis rata-rata skor berdasarkan gender
gender_avg <- data %>%
  group_by(gender) %>%
  summarise(
    avg_math = mean(math_score),
    avg_reading = mean(reading_score),
    avg_writing = mean(writing_score)
  )

print(gender_avg)

# Analisis pengaruh tingkat pendidikan orang tua
education_avg <- data %>%
  group_by(parental_level_of_education) %>%
  summarise(
    avg_math = mean(math_score),
    avg_reading = mean(reading_score),
    avg_writing = mean(writing_score)
  )

print(education_avg)

# Visualisasi rata-rata skor berdasarkan gender
ggplot(gender_avg, aes(x = gender, y = avg_math, fill = gender)) +
  geom_bar(stat = "identity") +
  labs(title = "Rata-rata Skor Matematika Berdasarkan Gender",
       x = "Gender", y = "Rata-rata Skor Matematika") +
  theme_minimal()

# Visualisasi rata-rata skor berdasarkan tingkat pendidikan orang tua
ggplot(education_avg, aes(x = reorder(parental_level_of_education, -avg_math), y = avg_math, fill = parental_level_of_education)) +
  geom_bar(stat = "identity") +
  labs(title = "Rata-rata Skor Matematika Berdasarkan Tingkat Pendidikan Orang Tua",
       x = "Tingkat Pendidikan Orang Tua", y = "Rata-rata Skor Matematika") +
  theme_minimal() +
  coord_flip()