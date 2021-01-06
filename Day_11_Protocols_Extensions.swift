/*
 
    Day 11 : protocols, extensions, and Protocol extensions
    - Protocols
    - Protocol inheritance
    - Extension
    - Protocol extensions
    - Protocol-oriented programming
 
 */

// -------------------- Protocols --------------------
// Protocols are a way of describing what properties and methods something must have.

protocol Identifiable {
    var id: String { get set } // get is read, set is written
}

struct User: Identifiable {
    var id: String
} // We pull "id" from Identifier

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
} // we also pull "id" from identifier as well


// -------------------- Protocol inheritance --------------------

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {}


// -------------------- Extension --------------------
// Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.

extension Int {
    func squared() -> Int {
        return self * self
    }
}

//To try that out, just create an integer and you’ll see it now has a squared() method:
let number = 8
number.squared()

// Swift doesn't allow you to add stored properties in extension (let, var)

// -------------------- Protocol extensions --------------------
// Protocols let you describe what methods something should have, but don’t provide the code inside. Extensions let you provide the code inside your methods, but only affect one data type

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()


// -------------------- Protocol-oriented programming --------------------

protocol Identifiable2 {
    var id: String { get set }
    func identify()
}

extension Identifiable2 { // Extend the protocol
    func identify() {
        print("My ID is \(id).")
    }
}

struct Users: Identifiable2 {
    var id: String
}

let twostraws = Users(id: "twostraws")
twostraws.identify()
