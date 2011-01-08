MatrixRow := list clone
# dom(x) will fill the row with x nils
MatrixRow dim := method(
    x,
    x repeat(
        n,
        append(nil)
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

matrix := Matrix clone
matrix dim(3, 2)
writeln(matrix)
writeln(matrix get(2, 1))
matrix set(2, 1, 12)
writeln(matrix)
matrix set(0, 1, 1)
writeln(matrix)

transposed := matrix transpose
writeln(transposed)
