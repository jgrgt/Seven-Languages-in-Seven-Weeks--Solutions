# This solution continues on the work done for question number 5
MatrixRow := list clone
# dom(x) will fill the row with x nils
MatrixRow dim := method(
    x,
    x repeat(
        n,
        append(nil)
    )
)
MatrixRow fromStringList := method(
    stringList,
    stringList foreach(
        string,
        if(
            string == "nil",
            append(nil),
            append(string asNumber)
        )
    )
)

Matrix := list clone
# dim(x, y) will fill the matrix with x rows of y nils
Matrix dim := method(
    x,
    y,
    x repeat(
        n,
        append(
            row := MatrixRow clone
            row dim(y)
        )
    )
)
Matrix set := method(
    x,
    y,
    value,
    at(x) atPut(y, value)
)
Matrix get := method(
    x,
    y,
    at(x) at(y)
)
Matrix transpose := method(
    t := Matrix clone
    x := if(at(0) != nil, at(0) size, 0)
    y := size
    t dim(x, y)
    foreach(
        rowIndex,
        rowValue,
        rowValue foreach(
            itemIndex,
            itemValue,
            t set(itemIndex, rowIndex, itemValue)
        )
    )
    t
)
Matrix toFile := method(
    filename,
    f := File with(filename)
    f remove
    f openForUpdating
    foreach(
        row,
        row foreach(
            index,
            value,
            if(
                value == nil,
                f write ("nil"),
                f write(value asString)
            )
            if(
                (index + 1) < (row size),
                f write(" ")
            )
        )
        f write("\n")
    )
    f close
)
Matrix fromFile := method(
    filename,
    f := File with(filename)
    f openForReading
    f foreachLine(
        line,
        row := MatrixRow clone
        row fromStringList(line split)
        append(row)
    )
)


matrix := Matrix clone
matrix dim(3, 2)
matrix set(1, 1, 11)
matrix set(0, 1, 1)
matrix set(1, 0, 10)
writeln(matrix)
matrix toFile("mymatrix.txt")

readmatrix := Matrix clone
readmatrix fromFile("mymatrix.txt")
writeln(readmatrix)
