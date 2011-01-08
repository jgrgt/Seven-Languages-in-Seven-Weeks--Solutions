"Before:" println
(0 / 0) println
(1 / 0) println
(2 / 0) println

NumberPrototype := 0 proto
oldMethod := NumberPrototype getSlot("/")
NumberPrototype / := method(d, if(d == 0, 0, oldMethod(d)))

"After:" println
(0 / 0) println
(1 / 0) println
(2 / 0) println
