paste("It was the", c("best", "worst"), "of times")

paste("It was the best of times", "It was the worst of times", sep = ", ")

paste(c("R", "Is", "Great"), collapse = "! ")

paste("R", "is", "great", sep = "!")

nchar("Hello!")

grepl("s{2}", c("classroom", "snow", "choice"))

potential_numbers <- c("banana", "756-447-0087", "2125550946", "5656", "thisisgreat!",
                       "776tegue7", "6-42743-00000000", "76-347-348-177",
                       "66498397123")

#grepl("", potential_numbers)

grepl("[a-h]", letters)

soup <- c(letters, paste(letters, letters, sep = ""))

grepl("[a-h]{2}", soup)

grepl("^[0-9]{3}-?[0-9]{3}", potential_numbers)
grepl("^[0-9]{3}-?", c("756-447-0087", "2125550946"))
grepl("^a", c("apple", "pear", "bbaaa"))

text2 <- c("756-447-0087", "2125550946", "banana")

grep("^[0-9]{3}-?", c("756-447-0087", "2125550946", "banana"))
grep("na$", text2)



sub("an", "X", "banana")
gsub("an", "X", "banana")

gsub("a|n", "X", "banana")
gsub("[an]", "X", "banana")

library(stringr)
str_count("banana", "a|n")
str_detect("banana", "X")
fruit <- c("apple", "pear", "banana")
str_dup(fruit, 2)
rep("banana", 3)
str_split("R is great!", " ")

postal_states <- c("ga", "GA", "md", "MD")

str_to_title("gone With The wind")

str_trim(c("  Maryland      ", " Maryland        "))

install.packages("dplyr")

library(dplyr)

legos <- read.csv("https://raw.githubusercontent.com/seankross/lego/master/data-tidy/legosets.csv", stringsAsFactors = FALSE)

legos_simple <- select(legos, Item_Number, Pieces, USD_MSRP)
legos_simple <- mutate(legos_simple, PPP = USD_MSRP / Pieces)
legos_simple <- filter(legos_simple, !is.na(USD_MSRP))
legos_simple <- filter(legos_simple, !is.na(Pieces))
legos_simple <- filter(legos_simple, PPP < 0.50)

legos_simple <- legos %>%
  filter(Item_Number != 71008) %>%
  select(Item_Number, Pieces, USD_MSRP) %>%
  mutate(PPP = USD_MSRP / Pieces) %>%
  filter(!is.na(USD_MSRP)) %>%
  filter(!is.na(Pieces)) %>%
  filter(PPP < 0.50) %>%
  arrange(desc(PPP)) %>%
  filter(PPP > 0) %>%
  slice(1:25) %>%
  left_join(legos, by = Item_Number)

student_grades <- data.frame(students = c("Mary", "Joe", "Pat", "Pat"),
                     grades = c(98, 79, 84, 90),
                     class = c("math", "math", "math", "spanish"))
student_states <- data.frame(students = c("Mary", "Joe", "Pat"),
                             states = c("GA", "MD", "NY"))

left_join(student_grades, student_states, by = "students")







boxplot(legos_simple$PPP)

plot(jitter(rep(0, length(legos_simple$PPP))), legos_simple$PPP,
     xlim = c(-.05, .05))


