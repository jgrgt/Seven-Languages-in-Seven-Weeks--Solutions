stdin := File standardInput
number := ((Random value(100)) roundDown) + 1
number asString println
guess := stdin readLine("Guess a number between 1 and 100 (both included): ") asNumber
oldfault := 100
while(
    guess != number,
    if(
        guess == Number constants nan,
        guess = stdin readLine("You did not enter a number, try again: ") asNumber,
        fault := (number - guess) abs
        fault asString println
        if(
            fault > oldfault,
            direction := "colder",
            direction := "warmer"
        )
        guess = stdin readLine("You are getting #{direction}, take another guess: " interpolate) asNumber
        oldfault = fault
    )
)
"Correct!" println
