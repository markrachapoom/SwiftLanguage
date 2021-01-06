# 100DaysOfSwift
import UIKit

/*
        Day 1 : Fresh start!!!
        Table of contents
        - Variables
        - Multi-line String
        - String Interpolation
        - Constant
        - Type Annotation
*/

// ----------------------- Variables -----------------------

// Daclare a variable that stores number
// type of a number does not matter in Swift

// Declare a "string" which is a line of text
var str = "Welcome to Swift"

// Integer
var age = 18

// Double (A number with decimal place)
var decimal = 130.123

// When number gets larger you can use underscore as a comma
var population = 8_000_000

// Line of text (Sting)
var line = "Hello, my name is Rachapoom Phanchotong"

// This will declare a truth value
var santaIsComing = true

// ----------------------- Multi-line String -----------------------


// This will print three lines of text as you see
// The opening and closing triple quotation marks must be on their own line
// Quotation marks won't be shown for an output

var sentence = """
Hello,
My name is
Rachapoom Phanchotong
"""

// This will be on the same line because they include a Backslash behind

var sentence_2 = """
Hello,\
My name is \
Rachapoom Phanchotong
"""

// ----------------------- String Interpolation -----------------------

// Insert previous variable into another line

// Declare a variable "score" with 150 as a value
var score = 150

// This will show "Your score is : 150"
var output = "Your score is : \(score)"


// ----------------------- Constant -----------------------

// Value inside can't be changed when you use "let" instead of "var"
let a = 111
let b = 222
let c = 333

// ----------------------- Type Annotation -----------------------

// You can be explicit about the type of your data rather than relying on Swift's type inference, like this, as well (It's optional)

let constant : Int = 15
let duh : Double = 3.14159
let hello : String = "Hello, World"
let random : Bool = true

