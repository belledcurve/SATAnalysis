answercheck <- function(list_input1, list_input2) {
answer <- list_input1
studentans <- list_input2
o <- 0 
x <- 0
for (ans in 1:length(list_input)) {
    if (answer[ans] == studentans[ans]) {
      o <- o + 1
    }
    if (length(answer) != length(studentans)) {
      print("length does not match")
      break
    }
    else {
      x <- x + 1
    }
}
print(paste("no of correct answers:", o, "/", length(list_input1)))
}
