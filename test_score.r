#This code calculates the group mean of data using R
#install.packages("dplyr")
library(dplyr)

# We are creating data that includes a data frame with the test averages of two men and two women.
data <- data.frame(name = c("Taro", "Jiro", "Hanako", "Noriko"), 
                sex = c("male","male","female","female"), 
                Test_score =c(90,80,100,70))
#The code below calculates the mean test scores for men and women separately.
data <- data %>%
  group_by(sex) %>%
  mutate(Ave_by_sex=mean(Test_score)) %>%
  mutate(diff_by_sex=Test_score-Ave_by_sex) %>% 
  ungroup()
