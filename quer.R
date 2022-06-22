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


for (s in 1:length()) {
  quer[5,s] = unique[s]
}


for (s in 1:length(jiho.wrong.writing)) {
  quer[6,s] = jiho.wrong.writing[s]
}


for (s in 1:length(jiho.coew)) {
  quer[7,s] = jiho.coew[s]
}


for (s in 1:length(jiho.wicw)) {
  quer[8,s] = jiho.wicw[s]
}


for (s in 1:length(jiho.eoiw)) {
  quer[9,s] = jiho.eoiw[s]
}


for (s in 1:length(jiho.secw)) {
  quer[10,s] = jiho.secw[s]
}


for (s in 1:length(jiho.history_social)) {
  quer[11,s] = jiho.history_social[s]
}


for (s in 1:length(jiho.science)) {
  quer[12,s] = jiho.science[s]
}


for (s in 1:length()) {
  quer[13,s] = [s]
}