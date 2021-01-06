/*
        Day 4 : Learning loops!
        - For Loop
        - While Loop
        - Repeat Loop
        - Exiting Loop
        - Exiting Multiple Loop
        - Skipping Item
        - Infinite Loop
        
*/

// ------------------------------ For Loop ------------------------------
// Here's a range of a number
let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

// If you don't usa a constant that for loops give you, consider using underscore " _ "

for _ in 1...5{
    print("play")
} // this will print "play" for 5 times

for _ in 1..<5{
    print("play")
} // this will print "play" 4 times



// ------------------------------ While Loop ------------------------------
// it will run until the condition turns false

var number = 1

while number <= 20 {
    print(number)
    number += 1
}


// ------------------------------ Repeat Loop ------------------------------
// This is not commonly used, repeat while

var number1 = 1

repeat {
    print(number1)
    number1 += 1
} while number1 <= 20

// It looks like while loop?? Exactly, they are the same


while false {
    print("Hello")
}
// ^^^ Both syntax are the same vvv
repeat {
    print("Hello")
} while false



// ------------------------------ Exiting Loop ------------------------------
var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
    
    if countDown == 4 {
        break // go out of the while loop immediately
        print("I can't wait")
    }
}

print("Happy New Year!!!!")



// ------------------------------ Exiting Multiple Loop ------------------------------

// If you put loop inside a loop it is called : Nested Loop
for i in 1...10{
    for j in 1...10{
        let product = i * j
        print("The product of \(i) and \(j) is \(product)")
    }
}

// If you want to exit part-way through we need to do two things
// 1 ) Give outside loop a label " outerloop : "
// 2 ) Add out condition inside the inner loop, then use break outerloop to exit loop at the same time

outerLoop : for m in 1...10 {
    for n in 1...10{
        let product = m * n
        print("The product of \(m) and \(n) is \(product)")
        
        if product == 50 {
            print("It is a bullseye!")
            break outerLoop
        }
    }
}



// ------------------------------ Skipping items ------------------------------
// From the previous topic, we got break
// FOr this topic, we have " continue "

for q in 1...10 {
    if q % 2 == 1{
        continue // move on the the next condition
    }
    
    print(q)
}


// ------------------------------- Infinite loop -------------------------------

while true {
    print("Hello, world!")
} // This infinite loop will run forever
