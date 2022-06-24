quer <- c(rep(0, times = length(studenta.wrong)*13))
dim(quer) <- c(13,length(studenta.wrong))
quer



for (s in 1:length(studenta.wrong)) {
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
  
  quer[6,s] = studenta.wrong.writing[s]
}


for (s in 1:length(studenta.coew)) {
  quer[7,s] = studenta.coew[s]
}


for (s in 1:length(studenta.wicw)) {
  quer[8,s] = studenta.wicw[s]
}


for (s in 1:length(studenta.eoiw)) {
  quer[9,s] = studenta.eoiw[s]
}


for (s in 1:length(studenta.secw)) {
  quer[10,s] = studenta.secw[s]
}


for (s in 1:length(studenta.history_social)) {
  
  quer[11,s] = studenta.history_social[s]
}


for (s in 1:length(studenta.science)) {
  
  quer[12,s] = studenta.science[s]
}

studenta.literature <- outersect(studenta.wrong, studenta.science, studenta.history_social)
for (s in 1:length(studenta.literature)) {
  
  quer[13,s] = studenta.literature[s]
}
