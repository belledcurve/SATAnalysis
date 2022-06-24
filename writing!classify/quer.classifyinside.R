

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
