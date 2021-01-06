/*
 
    Day 12 : optional, unwrapping, typecasting
    - Handling missing data
    - Unwrapping optionals
    - Unwrapping with guard
    - Force unwrapping
    - Implicity unwrapped optionals
    - Nil coalescing
    - Optional chaining
    - Optional try
    - Failable initializers
    - Typecasting
 
 */

// -------------------- Handling missing data --------------------

var age: Int? = nil // We don't know the age at first
age = 38

// -------------------- Unwrapping optionals --------------------

var name: String? = nil

if let  unwrapped = name { // If name isn't nil, let unwrapped = name
    print("\(unwrapped.count) letters")
} else { // If name is "nil"
    print("Missing name.")
}

// -------------------- Unwrapping with guard --------------------

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)!")
}

// -------------------- Force unwrapping --------------------

let str = "5"
let num = Int(str) // num will print optional(5) because the compiler don't actually know if str is Int or String

let num2 = Int(str)! // This will print 5 as Int
// ** Notes : use "!" of you are 100% sure that it's valid **


// -------------------- Implicity unwrapped optionals --------------------

let age2: Int! = nil
print(age2) // This will print nil

// let age3: Int = nil


// -------------------- Nil coalescing --------------------
// The nil coalescing operator unwraps an optional and returns the value inside if there is one.

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"
// If user is nil, user = "Anonymous"
// If user is not nil, user = "Taylor Swift"


// -------------------- Optional chaining --------------------
// Swift provides us with a shortcut when using optionals: if you want to access something like a.b.c and b is optional

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased() // if first item exist, make it a uppercased string. If not, it will print nil


// -------------------- Optional try --------------------
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch { // If "try" failed
    print("You can't use that password...")
}

/*
 do – This keyword starts the block of code that contains the method that can potentially throw an error.

 try – You must use this keyword in front of the method that throws. Think of it like this: “You’re trying to execute the method.

 catch – If the throwing method fails and raises an error, the execution will fall into this catch block. This is where you’ll write code display a graceful error message to the user.
 */

if let result = try? checkPassword("password") {
    print("Result was \(result)") // if checkpasword error, it will return optional
} else {
    print("D'oh.")
}

// -------------------- Failable initializers --------------------

let str2 = "5"
let num3 = Int(str2)

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}


// -------------------- Typecasting --------------------

// Here are three classes
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
    // This uses a new keyword called as?, which returns an optional: it will be nil if the typecast failed, or a converted type otherwise.
}
