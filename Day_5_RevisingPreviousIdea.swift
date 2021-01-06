/*
    Day 5: I changed a learnign web to LinkedIn Learnign 
    - Type Safety and Inference
    - Swift Operators
    - Understanding Strings
    - Working with Strings
    - Type Conversions
    - Booleans and Logical Operators
    - Introduction Optional
    - Some challenge
*/

// -------------------- Type Safety and Inference --------------------
// Type inference
var currentHealth = 90

// Type annotation
var characterName: String
characterName = "Kobe Brooke"

// Type annotation + inference
var maxHealth: Int = 100

// Multiple variables - type annotation shorthand
var numberOne, numberTwo, numberThree: Int


// -------------------- Swift Operators --------------------
// Arithmetic (+, -, /, *)


// Compound assignments (+=, -=, *=, /=, %=)


// Modulo (%)

/*  
    Comparisons (==, !=, >, <, >=, <=)
    Logical operators (!, &&, ||)
    Ranges (1...5 or 1..<5)
*/

// -------------------- Understanding Strings --------------------
// Declaring strings
var activeQuest : String = "Retrieving the Cart!"

// Concatenation
var questDifficulty = "Nightmare"
var questInfo = activeQuest + " -> " + questDifficulty

questInfo += "!"
// String interpolation
let questInfo_Interpolated = "I'm not sure you are ready to \(activeQuest) yet, it's level"


// -------------------- Working with Strings --------------------
// Test variable
var dialogue = "The Innkeeper's Haven"

// String data
dialogue.count
dialogue.isEmpty
dialogue.contains("s")

// Append and Insert
dialogue.append(contentsOf: ", weary travelers")

// Remove and Split
//dialogue.removeLast()
//dialogue.removeFirst()
//dialogue.removeAll()

dialogue.split(separator: ",")

print(dialogue)


// -------------------- Type Conversions --------------------
// Test variables
var currentGold_Double = 5.999999

// Explicit conversions
var currentGold_Integer: Int = Int(currentGold_Double)
var currentGold_String: String = String(currentGold_Integer)

// Inferred conversion with operators
var bankDeposit = 37 + 5.892
var bankDeposit_Explicit = currentGold_Double + Double(currentGold_Integer)


// -------------------- Booleans and Logical Operators --------------------
// Test variable
var isActive: Bool = false
var canMove: Bool = false

// Logical operators (!, &&, ||)
isActive = !isActive

var playerControl_and = canMove && isActive
var playerControl_or = canMove || isActive


// -------------------- Introduction Optional --------------------
// Creating optionals
var itemGather: String? = "Pickaxe"
var isExchangable: Bool?

// Forced unwrapping
print(itemGather!)

"""
Chapter Challenge: Player Stats

Tasks:

1 ) Create 2 variables called characterName and weaponClassification and assign them string values of your choice.
2 ) Use the += operator to add a nickname string onto characterName.
3 ) Create a variable called currentMana and assign it a decimal value.
4 ) Create another variable called manaPercentage and assign it currentMana divided by 100, then explicitly convert it to a string.
5 ) Create a variable called debugStats and use string interpolation to lay out your character stats in a creative way. (HINT: use \n to create line breaks)
6 ) Create 2 boolean variables called questAccepted and canQuest respectively and assign them values of your choice.
7 ) Use the AND (&&) operator to evaluate if questAccepted and canQuest are both true and store it in a variable called questStatus.
8 ) Add an interpolated string that includes questStatus to debugStats using the append method and print out debugStats.
"""

// Solution :
// 1
var characterName = "Adam"
var weaponClassification = "Carry"

// 2
characterName += " Erving"

// 3
var currentMana: Double = 78.422212312

// 4
var manaPercentage: String = String(currentMana / 100)

// 5
var debugStats = "The brave \(characterName) with \(currentMana) \nMana : The percentage of mana is evaluated to be \(manaPercentage)"

// 6
var questAccepted: Bool = true
var canQuest: Bool = true

// 7
var questStatus = questAccepted && canQuest

// 8
debugStats.append(contentsOf: "\nQuest accepted status : \(questAccepted)\nAbility to quest status : \(canQuest)")
print(debugStats)
