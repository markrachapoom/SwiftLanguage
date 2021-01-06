/*

    Day 7 : Closure
    - Understanding closures
    - Using Closures IRL
    - Type Aliasing

*/

// -------------------- Understanding closures --------------------
"""
Every function has a type, or unique signature.
Function types can be used in Swift like any other type, such as strings or integers.
This can come in handy when you need to pass functions into other functions as parameters, or use them as return types.
"""

// Function types
func computeBonusDamage(baseDamage: Int) -> Int {
    return baseDamage * 4
}

// Functions as parameters
func dealDamage(baseDamage: Int, bonusDamage: (Int) -> Int) {
    let bonus = bonusDamage(baseDamage)
    print("Base Damage: \(baseDamage)\nBonus Damage: \(bonus)")
}

dealDamage(baseDamage: 55, bonusDamage: computeBonusDamage)


// ---------------------- Using Closures IRL ----------------------
"""
Like functions, closures are enclosed blocks of functionality but with more concise syntax.
In Swift closures act like blocks or lambda expressions in other programming languages,
allowing us to pass function-like operations around like variables.
"""

// Defining closures
var closure: () -> () = {}

// Initializing closures
var computeDamage = { (base: Int) -> Int in
    return base * 4
}


// ------------------------- Type Aliasing -------------------------
"""
There are several ways to use closures now that we know how their syntax works,
including with Swift functions that perform operations based on predicates
or as input parameters and return values for our own custom functions.
"""
// Test variables
var highScores = [3412, 0, 1988, 722]
var partyMembers = ["Harrison", "Steven", "Bob the Noob"]

// Existing functions with closures
var ascendingSort = highScores.sorted { (firstValue, secondValue) -> Bool in
    return firstValue < secondValue
}

print(ascendingSort)

// Using custom closures with functions
func activeMembers(completion: ([String]) -> Void){
    completion(partyMembers)
}

activeMembers { (member) in
    for name in member {
        print("\(name) is active!")
    }
}

func activeMembers(members: [String]) -> () -> Void {
    let completion: () -> Void = {
        for name in members {
            print("\(name) is present!")
        }
    }
    return completion
}

var closureReturn = activeMembers(members: partyMembers)
closureReturn()


