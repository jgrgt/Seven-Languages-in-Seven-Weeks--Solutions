numbers := list(list(1, 2, 3), list(4, 5, 6), list(7, 8, 9))

matrixsum := method(
    matrix,
    sum := 0
    matrix foreach(
        listIndex,
        listValue,
        listValue foreach(
            numberIndex,
            numberValue,
            sum := sum + numberValue
        )
    )
    sum
)

writeln("The sum is ", matrixsum(numbers))
