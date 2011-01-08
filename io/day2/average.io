numbers := list(1, 2, 4, 6.12, 19)

listProto := numbers proto
listProto myAverage := method(
    sum := 0
    foreach(i, n, if(
        (n proto) == (0 proto),
        sum = sum + n,
        Exception raise("myAverage only works on lists containing only numbers")
    ))
    sum / size
)

writeln("The average of ", numbers, " is ", numbers myAverage)
# 0 / 0 returns -nan
writeln("The average of an empty list is ", list() myAverage)

badList := list(1, 0, "9")
# This will throw an exception
writeln("The average of ", badList, " is ", badList myAverage)
