/*
            Day 2 : Array and some kind of lists
            - Array
            - Set
            - Tuple
            - Dictionary
            - Enumeration
            - Enum associated values
            - Enum raw values
*/

// -------------------- Array --------------------

let beatle = ["One", "Two", "Three", "Four"]
print(beatle[1]) // Output is "Two" because the first index is 0



// --------------------- Set ---------------------

let color = Set(["Red", "Green", "Blue"])
let color2 = Set(["Red", "Green", "Blue", "Blue"])
print(color) // Output :  ["Red", "Green", "Blue"]
print(color2) // Output : ["Red", "Green", "Blue"] (elements can't be duplicated)



// -------------------- Tuple ---------------------

// 1 ) You can't add or remove item from a tuple
// 2 ) You can't change a type of item in a tuple
// 3 ) Only thing you can do is to access the data

var name = (first: "Adam", last: "Levine") // Tuple comes with parentheses
print(name.0) // Output : Adam
print(name.1) // Output : Lavine
print(name.first) // Output : Adam
name = (first: "Adam", last: "Eve") // You can change a value inside tuple but not for "Type"
//name = (first: "Adam", last: 18) // This will give an ERROR
//name = (fisrt: "Adam", age: "Eve") // This will give an ERROR
//name = (fisrt: "Adam", age: 18) // This will give an ERROR

print(name.0) // Adam
print(name.last) // Eve




// ---------- What are the differences among those three?? ----------

//  - Tuple : when you need a specific and values that has precise position
//  - Set : When you need a collection of value that must be unique
//  - Array : When you need a collection of data that can be duplicated order does matter




// --------------------------- Dictionary ---------------------------

// Storing data using dictionary

let height = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

print(height["Taylor Swift"]) // 1.78
print(height["Ed Sheeran"]) // 1.73


print(height["markkypanc"]) // "nil" It has no key in dictionary, you can do this instead
print(height["markkypanc", default: 1.80])



// ------------------- Creating empty collections -------------------

// Swift has its own syntax for creating empty list


// Creating empty Array (add item later)
var array_1 = [Int]()
array_1 += [1] // First way to add item
array_1.append(2) // Second way to add item
print(array_1[0], array_1[1])


// Creating empty Set (add item later)
var set_1 = Set<String>()


// Creating empty dictionary (add items later)
var dictionary_1 = [String : String]()
dictionary_1["First Color"] = "Red" // add item
dictionary_1["Second Color"] = "Green" // add item
dictionary_1["Third Color"] = "Blue" // add item
print(dictionary_1["Third Color"]) // Blue as an output



// ----------------------- Enumeration (enum) -----------------------

let result = "failure"
let result2 = "failed"
let result3 = "fail"
// three of these mean failing but different but you want it to be just failure

// Existence of enum is for defining the same type of a finalized meaning
enum Result {
    case success
    case failure
}

let result4 = Result.failure
// Results four has a value of "failure" right now



// --------------------- Enum associated values ---------------------

enum Activity {
    case bored
    case running
    case talking
    case singing
}
// We know that someone is bored, but about what???
// We know that someone is running, but where is their destination?
// We know that someone is talking, but who are they talking to?
// We know that someone is singing, but what song??

// This is the duty of Enum associated value
enum Activity_2 {
    case bored (about: String)
    case running(destination : String)
    case talking(person: String)
    case singing(song: String)
}

let talk = Activity_2.talking(person: "Mark")
let run = Activity_2.running(destination: "San Diego")




// ------------------------ Enum raw values ------------------------
// For example, you might create a Planet enum that stores integer values for each of its cases:

enum Planet: Int {
    case mercury = 1 // assign 1 to mercury and the number will be automatically assign to the rest
    case venus // venus turn 2 automatically
    case earth // turn 3
    case mars // turn 4
}

// You could do this
enum Planet2: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet2(rawValue: 2)
