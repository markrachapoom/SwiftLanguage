/*
        Day 3 : logical analysis
        - Arithmetic Operator
        - Operator overloading
        - Compound assignment operators
        - Comparison operators
        - Conditions
        - Combining conditions
        - The ternary operator
        - Switch statements
        - Range operators
        
*/

// -------------------- Arithmetic Operators --------------------

// Use a mathematics operator to oprate the number

let firstValue = 12
let secondValue = 3

// Let's do a super easy math with +, -, *, / operators
let total = firstValue + secondValue // simple as that!!
let difference = firstValue - secondValue
let product = firstValue * secondValue
let division = firstValue / secondValue

// " % " or Modulus to calculate the remainder
// This will give 0 because 12/3 ; remainder = 0
let remainder = firstValue % secondValue



// ------------------- Operator Overloading -------------------
let number = 50
let doubleNumber = 50 + 50 // Still easy

// Now let's talk about String
let sentence1 = "I am going to "
let word = "learn Swift!!!!"
let fullSentence = sentence1 + word // "I am going to learn Swift!!!!"

// Use can also use " + " to join Array as well
let arrayOne = ["One", "Two"]
let arrayTwo = ["Three", "Four"]
let fullArray = arrayOne + arrayTwo



// -------------------- Compound Operator --------------------
// You know just +, -, *, /, % now it has " = "
// It is not equalvalence sign but it is used to "assign value"

var score = 250
score -= 50 // Now score will be 200, but why??
// It is exactly the same as score = score - 50 but what??
// score(think as a new variable) equals score(which is 250) minus 50

var quote = "Hello my name is "
quote += "Mark!"



// ------------------- Comparison Operator -------------------
// We will play with truth value right on this step
let firstNumber = 5
let secondNumber = 10

firstNumber == secondNumber // This will be false because 5 != 10
firstNumber != secondNumber // This will turn true (" ! " sign is NOT)



// ------------------------ Conditions ------------------------
let number1 = 10
let number2 = 15

if number1 + number2 == 25 {
    print("It is true!!!")
    // print() statement is the build-in function to print value out of console
} else if number1 + number2 == 20{
    print("Hello") // Is the statement above is not working out, it will come into this statement
} else {
    print("Nothing was right :(") // If it still not...it's here
}



// ------------------- Combination Conditions -------------------
// And or statement in Logic, here we go!!!

let age1 = 18
let age2 = 20


// && if one of the statement is false, it will not come into condition
// " && " is AND operator in Logic
if age1 == 18 && age2 == 20 {
    print("Both are True!")
}


// || if one of the statement is true, it will come into condition
// " || " is OR operator in Logic
if age1 == 10 || age2 == 20 {
    print("This is True!")
}



// ------------------- The Ternary operator -------------------
// Swift rarely used a ternary oprator

let oneOne = 1
let twoTwo = 2
print(oneOne == twoTwo ? "Yes it does": "No it does not")
// Is oneOne equal to twoTwo??? if it's true do the condition before " : "
// Is oneOne equal to twoTwo??? if it's false do the latter

// It is the same as
if oneOne == twoTwo{
    print("Yes it does")
} else {
    print("No it does not")
}



// --------------------- Switch Statement ---------------------

let weather = "sunny"

switch weather {
case "sunny":
    print("Wear a sunscreen!")
case "raining":
    print("Bring the umbrella!")
default:
    print("Enjoy your day!")
}

// what switch should have are
// 1 ) switch
// 2 ) case with " : " and following with condition like "else if"
// 3 ) default (if no statement are true) it's like "else"

// Notes : "default" is required in switch statement

// Swift will only run the code inside each case.
// If you want execution to continue on to the next case,
// use the "fallthrough" keyword like this:

switch weather {
case "sunny":
    print("Wear a sunscreen!")
case "raining":
    print("Bring the umbrella!")
    fallthrough
default:
    print("Enjoy your day!")
}



// --------------------- Range Operator ---------------------
// Swift gives us two ways of making ranges: the ..< and ...
// the range 1..<5 contains the numbers 1, 2, 3, and 4
// whereas the range 1...5 contains the numbers 1, 2, 3, 4, and 5.

let examScore = 85

switch score {
case 0..<50:
    print("You are failed, buddy")
case 50...85:
    print("You are Okay")
default:
    print("You did great!")
}
