install.packages ("tidyverse")
library(tidyverse)


reading <- c(1 : 52)
writing <- c(53 : 44+52)

# writing question type 
command.of.evidence.writing.raw <- c(6:7, 15:16, 18, 27, 33:34)
command.of.evidence.writing <- command.of.evidence.writing.raw + 52

words.in.context.writing.raw <- c(1:2, 17, 19, 28, 30, 36, 39)
words.in.context.writing <- words.in.context.writing.raw + 52

expression.of.ideas.writing.raw <- c(1:2, 5:7, 11, 15:19, 22, 25, 27:28, 30, 32-36, 39:40, 44)
expression.of.ideas.writing <- expression.of.ideas.writing.raw + 52

standard.english.convention.writing.raw <- c(3:4, 8:10, 12:14, 20:21, 23:24, 26, 29, 31, 37:38, 41:43)
standard.english.convention.writing <- standard.english.convention.writing.raw + 52

# reading question type 
command.of.evidence.reading <- c(8, 17:18, 22, 26:28, 36, 39, 42)

words.in.context.reading <- c(5, 6, 10, 13, 23-24, 34, 37, 40, 43)


# reading passage type 
analysis.in.history_social.studies.reading <- c(10:19, 29:37)
analysis.in.history_social.studies.writing.raw <- c(25, 27, 28, 30, 32, 33)
analysis.in.history_social.studies.writing <- analysis.in.history_social.studies.writing.raw + 52
analysis.in.history_social.studies <- c(analysis.in.history_social.studies.writing, analysis.in.history_social.studies.reading)


analysis.in.science.reading <- c(20:28, 38:47)
analysis.in.science.writing.raw <- c(15:19, 22)
analysis.in.science.writing <- analysis.in.science.writing.raw + 52
analysis.in.science <- c(analysis.in.science.writing, analysis.in.science.reading)




# student wrong answers
studenta.wrong.reading <- c(1, 5, 7, 8, 17, 20, 29, 31, 33, 34, 40, 46, 47)
studenta.wrong.writing.raw <- c(2, 3, 6, 7, 9, 10, 12, 13, 17, 19, 20, 29, 30, 36, 37)
studenta.wrong.writing <- studenta.wrong.writing.raw + 52
studenta.wrong <- c(studenta.wrong.reading, studenta.wrong.writing)


studentb.wrong.reading <- c(5, 17, 21, 22, 29, 32, 33, 44, 46, 47)
studentb.wrong.writing.raw <- c(3, 4, 5, 6, 7, 13, 18, 22, 23, 29, 30, 34, 35, 36, 42)
studentb.wrong.writing <- studentb.wrong.writing.raw + 52
studentb.wrong <- c(studentb.wrong.reading, studentb.wrong.writing)





#student wrong answers analysis
  #reading analysis - student 1
studenta.coe <- intersect(studenta.wrong, command.of.evidence.reading)
studenta.wic <- intersect(studenta.wrong, words.in.context.reading)

  #writing analysis - student 1
studenta.coew <- intersect(studenta.wrong, command.of.evidence.writing)
studenta.wicw <- intersect(studenta.wrong, words.in.context.writing)
studenta.eoiw <- intersect(studenta.wrong, expression.of.ideas.writing)
studenta.secw <- intersect(studenta.wrong, standard.english.convention.writing)

  
  #reading analysis - student 2
studentb.coe <- intersect(studentb.wrong, command.of.evidence.reading)
studentb.wic <- intersect(studentb.wrong, words.in.context.reading)

  #writing analysis - student 2
studentb.coew <- intersect(studentb.wrong, command.of.evidence.writing)
studentb.wicw <- intersect(studentb.wrong, words.in.context.writing)
studentb.eoiw <- intersect(studentb.wrong, expression.of.ideas.writing)
studentb.secw <- intersect(studentb.wrong, standard.english.convention.writing)


  #passage analysis
studenta.history_social <- intersect(studenta.wrong, analysis.in.history_social.studies)
studenta.science <- intersect(studenta.wrong, analysis.in.science)

studentb.history_social <- intersect(studentb.wrong, analysis.in.history_social.studies)
studentb.science <- intersect(studentb.wrong, analysis.in.science)



quer <- c(rep(NA, times = length(studenta.wrong)*13))
dim(quer) <- c(13,length(studenta.wrong))
quer



for (s in 1:length(studenta.wrong)) {
  if (studenta.wrong[s] > 52) {
    studenta.wrong[s] <- (studenta.wrong[s] - 52)
  }
  quer[1,s] = studenta.wrong[s]
}


for (s in 1:length(studenta.wrong.reading)) {
  quer[2,s] = studenta.wrong.reading[s]
}


for (s in 1:length(studenta.coe)) {
  quer[3,s] = studenta.coe[s]
}


for (s in 1:length(studenta.wic)) {
  quer[4,s] = studenta.wic[s]
}

others.reading <- outersect(studenta.wrong.reading, studenta.coe, studenta.wic)
for (s in 1:length(others.reading)) {
  quer[5,s] = others.reading[s]
}


for (s in 1:length(studenta.wrong.writing)) {
  if (studenta.wrong.writing[s] > 52) {
    studenta.wrong.writing[s] <- (studenta.wrong.writing[s] - 52)
  }
  quer[6,s] = studenta.wrong.writing[s]
}


for (s in 1:length(studenta.coew)) {
  if (studenta.coew[s] > 52) {
    studenta.coew[s] <- (studenta.coew[s] - 52)
  }
  quer[7,s] = studenta.coew[s]
}


for (s in 1:length(studenta.wicw)) {
  if (studenta.wicw[s] > 52) {
    studenta.wicw[s] <- (studenta.wicw[s] - 52)
  }
  quer[8,s] = studenta.wicw[s]
}


for (s in 1:length(studenta.eoiw)) {
  if (studenta.eoiw[s] > 52) {
    studenta.eoiw[s] <- (studenta.eoiw[s] - 52)
  }
  quer[9,s] = studenta.eoiw[s]
}


for (s in 1:length(studenta.secw)) {
  if (studenta.secw[s] > 52) {
    studenta.secw[s] <- (studenta.secw[s] - 52)
  }
  quer[10,s] = studenta.secw[s]
}


for (s in 1:length(studenta.history_social)) {
  if (studenta.history_social[s] > 52) {
    studenta.history_social[s] <- (studenta.history_social[s] - 52)
  }
  quer[11,s] = studenta.history_social[s]
}


for (s in 1:length(studenta.science)) {
  if (studenta.science[s] > 52) {
    studenta.science[s] <- (studenta.science[s] - 52)
  }
  quer[12,s] = studenta.science[s]
}

studenta.literature <- outersect(studenta.wrong, studenta.science, studenta.history_social)
for (s in 1:length(literature)) {
  if (studenta.literature[s] > 52) {
    studenta.literature[s] <- (studenta.literature[s] - 52)
  }
  quer[13,s] = literature[s]
}




no.wrong <- c(
  length(studenta.wrong),
  length(studenta.wrong.reading),
  length(studenta.coe),
  length(studenta.wic),
  length(studenta.wrong.reading)-length(c(unique(studenta.coe, studenta.wic))),
  length(studenta.wrong.writing),
  length(studenta.coew),
  length(studenta.wicw),
  length(studenta.eoiw),
  length(studenta.secw),
  length(studenta.history_social),
  length(studenta.science),
  length(studenta.wrong)-length(c(unique(studenta.history_social, studenta.science)))
)

percent.wrong <- c(
  length(studenta.wrong)/length(c(reading,writing)),
  length(studenta.wrong.reading)/length(reading),
  length(studenta.coe)/length(command.of.evidence.reading),
  length(studenta.wic)/length(words.in.context.reading),
  (length(studenta.wrong.reading)-length(c(unique(studenta.coe, studenta.wic))))/(length(reading)-length(c(unique(command.of.evidence.reading, words.in.context.reading)))),
  length(studenta.wrong.writing)/length(writing),
  length(studenta.coew)/length(command.of.evidence.writing),
  length(studenta.wicw)/length(words.in.context.writing),
  length(studenta.eoiw)/length(expression.of.ideas.writing),
  length(studenta.secw)/length(standard.english.convention.writing),
  length(studenta.history_social)/length(analysis.in.history_social.studies),
  length(studenta.science)/length(analysis.in.science),
  (length(studenta.wrong)-length(c(unique(studenta.history_social, studenta.science))))/(length(c(reading,writing))-length(c(unique(analysis.in.history_social.studies,analysis.in.science))))
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

