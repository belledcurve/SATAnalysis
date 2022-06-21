install.packages ("tidyverse")
library(tidyverse)


reading <- c(1 : 52)
writing <- c(53 : 44+52)

# writing question type 유형별 분류
command.of.evidence.writing.raw <- c(6:7, 15:16, 18, 27, 33:34)

words.in.context.writing.raw <- c(1:2, 17, 19, 28, 30, 36, 39)
words.in.context <- words.in.context.writing.raw + 52


# reading question type 유형별 분류
command.of.evidence.reading <- c(8, 17:18, 22, 26:28, 36, 39, 42)
words.in.context.reading <- c()

# reading passage type 유형별 분류



# 학생 오답
jimin.wrong.reading <- c()
jimin.wrong.writing.raw <- c()
jimin.wrong.writing <- jimin.wrong.writing.raw + 52
jimin.wrong <- c(jimin.wrong.reading, jimin.wrong.writing)


jiho.wrong.reading <- c(9, 21, 22, 23, 25, 37, 42, 45)
jiho.wrong.writing.raw <- c(9, 12, 14, 22, 33, 34, 42)
jiho.wrong.writing <- jiho.wrong.writing.raw + 52
jiho.wrong <- c(jiho.wrong.reading, jiho.wrong.writing)


intersect(jimin.wrong, command.of.evidence)
intersect(jimin.wrong, )
intersect(jimin.wrong, )
intersect(jimin.wrong, )
intersect(jimin.wrong, )
intersect(jimin.wrong, )
intersect(jimin.wrong, )



intersect(jiho.wrong, command.of.evidence)
intersect(jiho.wrong, )
intersect(jiho.wrong, )
intersect(jiho.wrong, )
intersect(jiho.wrong, )
intersect(jiho.wrong, )
intersect(jiho.wrong, )



	



write_csv (results, "C\\Desktop\\jiminjihocbpt1.csv")
