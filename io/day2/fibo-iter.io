# Iterative
fib := method(n, 
    f1 := 1
    f := 1
    while(n > 2,
        n = n - 1
        f := f1 + f
        f1 = f - f1
    )
    f
)

fib(1) println
fib(2) println
fib(3) println
fib(4) println
fib(5) println
fib(6) println
fib(7) println
fib(8) println
