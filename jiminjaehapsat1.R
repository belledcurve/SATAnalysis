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
analysis.in.history_social.studies <- c(analysis.in.history_social.studies.writing< analysis.in.history_social.studies.reading)


analysis.in.science.reading <- c(20:28, 38:47)
analysis.in.science.writing.raw <- c(15:19, 22)
analysis.in.science.writing <- analysis.in.science.writing.raw + 52
analysis.in.science <- c(analysis.in.science.writing, analysis.in.science.reading)




# student wrong answers
jiho.wrong.reading <- c(1, 5, 7, 8, 17, 20, 29, 31, 33, 34, 40, 46, 47)
jiho.wrong.writing.raw <- c(2, 3, 6, 7, 9, 10, 12, 13, 17, 19, 20, 29, 30, 36, 37)
jiho.wrong.writing <- jiho.wrong.writing.raw + 52
jiho.wrong <- c(jiho.wrong.reading, jiho.wrong.writing)


jaeha.wrong.reading <- c(5, 17, 21, 22, 29, 32, 33, 44, 46, 47)
jaeha.wrong.writing.raw <- c(3, 4, 5, 6, 7, 13, 18, 22, 23, 29, 30, 34, 35, 36, 42)
jaeha.wrong.writing <- jaeha.wrong.writing.raw + 52
jaeha.wrong <- c(jaeha.wrong.reading, jaeha.wrong.writing)





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
jaeha.coe <- intersect(jaeha.wrong, command.of.evidence.reading)
jaeha.wic <- intersect(jaeha.wrong, words.in.context.reading)

	#writing analysis - student 2
jaeha.coew <- intersect(jaeha.wrong, command.of.evidence.writing)
jaeha.wicw <- intersect(jaeha.wrong, words.in.context.writing)
jaeha.eoiw <- intersect(jaeha.wrong, expression.of.ideas.writing)
jaeha.secw <- intersect(jaeha.wrong, standard.english.convention.writing)


	#passage analysis
jiho.history_social <- intersect(jiho.wrong, analysis.in.history_social.studies)
jiho.science <- intersect(jiho.wrong, analysis.in.science)

jaeha.history_social <- intersect(jaeha.wrong, analysis.in.history_social.studies)
jaeha.science <- intersect(jaeha.wrong, analysis.in.science)



results <- data.frame
	





write_csv ("C\\Desktop\\jihojaehapsat1.csv")
