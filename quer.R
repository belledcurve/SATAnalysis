values <- c(
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
