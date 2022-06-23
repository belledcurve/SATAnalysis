install.packages ("tidyverse")
library(tidyverse)


reading <- c(1 : 52)
writing <- c(53 : 44+52)

# writing question type 
command.of.evidence.writing.raw <- c(6:7, 15:16, 18, 27, 33:34)

words.in.context.writing.raw <- c(1:2, 17, 19, 28, 30, 36, 39)
words.in.context <- words.in.context.writing.raw + 52


# reading question type
command.of.evidence.reading <- c(8, 17:18, 22, 26:28, 36, 39, 42)
words.in.context.reading <- c()

# reading passage type



# student wrong answers
jimin.wrong.reading <- c()
jimin.wrong.writing.raw <- c()
jimin.wrong.writing <- jimin.wrong.writing.raw + 52
jimin.wrong <- c(jimin.wrong.reading, jimin.wrong.writing)


jiho.wrong.reading <- c(9, 21, 22, 23, 25, 37, 42, 45)
jiho.wrong.writing.raw <- c(9, 12, 14, 22, 33, 34, 42)
jiho.wrong.writing <- jiho.wrong.writing.raw + 52
jiho.wrong <- c(jiho.wrong.reading, jiho.wrong.writing)





#student wrong answers analysis
  #reading analysis - student 1
jiho.coe <- intersect(jiho.wrong, command.of.evidence.reading)
jiho.wic <- intersect(jiho.wrong, words.in.context.reading)

  #writing analysis - student 1
jiho.coew <- intersect(jiho.wrong, command.of.evidence.writing)
jiho.wicw <- intersect(jiho.wrong, words.in.context.writing)
jiho.eoiw <- intersect(jiho.wrong, expression.of.ideas.writing)
jiho.secw <- intersect(jiho.wrong, standard.english.convention.writing)

  
  #reading analysis - student 2
studentb.coe <- intersect(studentb.wrong, command.of.evidence.reading)
studentb.wic <- intersect(studentb.wrong, words.in.context.reading)

  #writing analysis - student 2
studentb.coew <- intersect(studentb.wrong, command.of.evidence.writing)
studentb.wicw <- intersect(studentb.wrong, words.in.context.writing)
studentb.eoiw <- intersect(studentb.wrong, expression.of.ideas.writing)
studentb.secw <- intersect(studentb.wrong, standard.english.convention.writing)


  #passage analysis
jiho.history_social <- intersect(jiho.wrong, analysis.in.history_social.studies)
jiho.science <- intersect(jiho.wrong, analysis.in.science)

studentb.history_social <- intersect(studentb.wrong, analysis.in.history_social.studies)
studentb.science <- intersect(studentb.wrong, analysis.in.science)



quer <- c(rep(NA, times = length(jiho.wrong)*13))
dim(quer) <- c(13,length(jiho.wrong))
quer



for (s in 1:length(jiho.wrong)) {
  if (jiho.wrong[s] > 52) {
    jiho.wrong[s] <- (jiho.wrong[s] - 52)
  }
  quer[1,s] = jiho.wrong[s]
}


for (s in 1:length(jiho.wrong.reading)) {
  quer[2,s] = jiho.wrong.reading[s]
}


for (s in 1:length(jiho.coe)) {
  quer[3,s] = jiho.coe[s]
}


for (s in 1:length(jiho.wic)) {
  quer[4,s] = jiho.wic[s]
}

others.reading <- outersect(jiho.wrong.reading, jiho.coe, jiho.wic)
for (s in 1:length(others.reading)) {
  quer[5,s] = others.reading[s]
}


for (s in 1:length(jiho.wrong.writing)) {
  if (jiho.wrong.writing[s] > 52) {
    jiho.wrong.writing[s] <- (jiho.wrong.writing[s] - 52)
  }
  quer[6,s] = jiho.wrong.writing[s]
}


for (s in 1:length(jiho.coew)) {
  if (jiho.coew[s] > 52) {
    jiho.coew[s] <- (jiho.coew[s] - 52)
  }
  quer[7,s] = jiho.coew[s]
}


for (s in 1:length(jiho.wicw)) {
  if (jiho.wicw[s] > 52) {
    jiho.wicw[s] <- (jiho.wicw[s] - 52)
  }
  quer[8,s] = jiho.wicw[s]
}


for (s in 1:length(jiho.eoiw)) {
  if (jiho.eoiw[s] > 52) {
    jiho.eoiw[s] <- (jiho.eoiw[s] - 52)
  }
  quer[9,s] = jiho.eoiw[s]
}


for (s in 1:length(jiho.secw)) {
  if (jiho.secw[s] > 52) {
    jiho.secw[s] <- (jiho.secw[s] - 52)
  }
  quer[10,s] = jiho.secw[s]
}


for (s in 1:length(jiho.history_social)) {
  if (jiho.history_social[s] > 52) {
    jiho.history_social[s] <- (jiho.history_social[s] - 52)
  }
  quer[11,s] = jiho.history_social[s]
}


for (s in 1:length(jiho.science)) {
  if (jiho.science[s] > 52) {
    jiho.science[s] <- (jiho.science[s] - 52)
  }
  quer[12,s] = jiho.science[s]
}

jiho.literature <- outersect(jiho.wrong, jiho.science, jiho.history_social)
for (s in 1:length(literature)) {
  if (jiho.literature[s] > 52) {
    jiho.literature[s] <- (jiho.literature[s] - 52)
  }
  quer[13,s] = literature[s]
}




no.wrong <- c(
  length(jiho.wrong),
  length(jiho.wrong.reading),
  length(jiho.coe),
  length(jiho.wic),
  length(jiho.wrong.reading)-length(c(unique(jiho.coe, jiho.wic))),
  length(jiho.wrong.writing),
  length(jiho.coew),
  length(jiho.wicw),
  length(jiho.eoiw),
  length(jiho.secw),
  length(jiho.history_social),
  length(jiho.science),
  length(jiho.wrong)-length(c(unique(jiho.history_social, jiho.science)))
)

percent.wrong <- c(
  length(jiho.wrong)/length(c(reading,writing)),
  length(jiho.wrong.reading)/length(reading),
  length(jiho.coe)/length(command.of.evidence.reading),
  length(jiho.wic)/length(words.in.context.reading),
  (length(jiho.wrong.reading)-length(c(unique(jiho.coe, jiho.wic))))/(length(reading)-length(c(unique(command.of.evidence.reading, words.in.context.reading)))),
  length(jiho.wrong.writing)/length(writing),
  length(jiho.coew)/length(command.of.evidence.writing),
  length(jiho.wicw)/length(words.in.context.writing),
  length(jiho.eoiw)/length(expression.of.ideas.writing),
  length(jiho.secw)/length(standard.english.convention.writing),
  length(jiho.history_social)/length(analysis.in.history_social.studies),
  length(jiho.science)/length(analysis.in.science),
  (length(jiho.wrong)-length(c(unique(jiho.history_social, jiho.science))))/(length(c(reading,writing))-length(c(unique(analysis.in.history_social.studies,analysis.in.science))))
)


index <- c("total.wrong","reading.wrong", "coe", "wic", "others", "writing.wrong", "coew", "wicw", "eoiw", "secw", "by passage.history", "by passage.science", "by passage.literature")
row <- c("no.wrong","percent.wrong")

  
#results.raw <- matrix(no.wrong, percent.wrong, dimnames = list(row, col))
results <- cbind(no.wrong, percent.wrong, quer)
results <- cbind(index, results)
View(results)

#for (s in 1:length(nrow(quer))) {
#  for (d in 1:length(ncol(quer))) {
#    if (quer [s,d] > 52) {
#      quer [s,d] <<- paste((quer[s,d] - 52), "W")
#    }
#  }
#}


analysis <- data.frame(results)
write_csv (analysis, "analysis.csv")


