/*

    Day 8 : Structures Part One
    - Creating your own structs
    - Computed properties
    - ProperCreating your own structsty observers
    - Methods
    - Mutating methods
    - Properties and methods of strings
    - Properties and methods of arrays

*/

// -------------------- Creating your own structs ------------------------------------

// Create my own structs
struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")

// You can change the properties' value too!
tennis.name = "Lawn Tennis"
print(tennis.name)



// -------------------- Computed properties ------------------------------------------

// Computed Properties
struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)




// -------------------- ProperCreating your own structsty observers-------------------

// Property Observer
// Change value every time it has a change

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 50
progress.amount = 100



// -------------------- Methods ------------------------------------------------------

// Methods = action of struct (what you want that struct to do)
struct City {
    var population: Int
    
    func collectTexus() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
print(london.collectTexus())




// -------------------- Mutating methods ---------------------------------------------

// Mutating function
struct Person {
    var name: String = "Mark"
    
    // "name" can not be changed since it is a constant
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}



// -------------------- Properties and methods of strings ----------------------------

// Properties and methods of strings
// String; they have their own methods and properties

let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())



// -------------------- Properties and methods of arrays -----------------------------

// Properties and methods of arrays
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys)
print(toys.sorted())

toys.remove(at: 0)
