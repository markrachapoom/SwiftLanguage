/*

    Day 6 : Function
    - Basic Function 
    - Overloading Functions
    - Complex Functions
    - Function Type

*/


// ------------------------- Basic Function -------------------------

// Basic function
func findNeraestAlly(level: Int) -> String { // return type String
    print("Searching for ally above level \(level)")
    return "Argus"
}

findNeraestAlly(level: 12)

func findNearestEnemy(level: String) -> String {
    print("Searching for an enemy above level \(level)")
    return level
}

print(findNearestEnemy(level: "Difficult"))


// ------------------------- Function Overloading -------------------------

// Swift will let us have multiple functions with the same name as long as their function type, or signature, is different. This is called function overloading

// Base function
func attackEnemy() {
    print("Executing default attack...")
}

// Overloaded functions
func attackEnemy(damage: Int){
    print("Attacking for \(damage)")
}

func attackEnemy(damage: Double, weapon: String) -> Bool {
    let attackSuccess = true
    print("Attacking enemy for \(damage) with \(weapon)")
    
    return attackSuccess
}

attackEnemy()
attackEnemy(damage: 34)
attackEnemy(damage: 34, weapon: "sword")


// ------------------------- Complex Function -------------------------

// Optional return value
func setupArenaMatch() -> Bool? {
    return true
}

if let initSuccess = setupArenaMatch() {
    print("Level initialized : \(initSuccess)")
} else {
    print("Something went terribly wrong...")
}

// Multiple return values
func setupArenaMatch(levelName: String) -> (success: Bool, secretItem: String) {
    print("\(levelName) has initialized...")
    return (true, "Minotaur's Head")
}

var levelDetails = setupArenaMatch(levelName: "Poison Flats")
levelDetails.success
levelDetails.secretItem

// Default values
func setupDefaultMatch(levelName: String = "Fire Marshes", opponents: Int = 3) {
    print("Arena match will take place in the \(levelName) between \(opponents) players!")
}

setupDefaultMatch(levelName: "Hello", opponents: 15)


// ------------------------- Function Type -------------------------

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
