def checkanswer(list_input1, list_input2):
    answer = list_input1
    studentans = list_input2
    o = 0
    x = 0
    wrong = []
    for ans in range(len(list_input1)):
        if answer[ans] == studentans[ans]:
            o += 1
        elif len(answer) != len(studentans):
            print("length does not match")
        else:
            x += 1
            wrong.append(ans + 1)
    print("no of correct answers: ", o, "/", len(list_input1))
    print("wrong answeres:", end = " ")
    print(wrong)
