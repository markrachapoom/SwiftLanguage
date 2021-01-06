/*
    Day 10 : Classes and Inheritance
    - Creating your own classes
    - Class Inheritance
    - Overriding methods
    - Final Classes
    - Copying objects
    - Deinitializers
    - Mutability

5 Differences between Structs and Classes
 
1 ) You need to create an initializer all the time!
 
2 ) You can create a class based on an existing class (Inheritance, subclassing)
 
3 ) Structs is value types, but classes are reference type
 
4 ) Classes have deinitializers (deinit)
 
5 ) The way they deal with constants, classes can be changed anytime without using "mutating" keyword
 
*/



// -------------------- Creating your own classes --------------------
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")



// -------------------- Class inheritance --------------------

// Class you inherit from : Parent class, Super class
// The new class is called : Child class

// Dog class was created above, we'll inherit from it

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}



// -------------------- Overriding Methods --------------------

// For the redundant function name
class Dog2 {
    func barking() {
        print("Brooooooo!")
    }
}

class Poodle2: Dog2 {
    override func barking() {
        print("Hok Peep!")
    }
}



// -------------------- Final Classes --------------------

// It has a meaning in its word, "Final"
// That means you can't inherit from final class

final class Dog3 {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

/*
 
// This class can not inherit from Dog3
 
class inheritFromDog3: Dog3 {
    init(name: String) {
        super.init(name: String, breed: "Poodle")
    }
}
 
*/



// -------------------- Copying Objects --------------------

/*
 Structs is value types (if you change instance's value, it won't change inside struct), Classes are reference type (if you change instance's value, it will change inside a class)
 */

class Singer {
    var name: String = "Taylor Swift"
}

var singer1 = Singer()
print(singer1.name)

var singer2 = singer1
singer2.name = "Justin Beiber"

// This will change name in Singer class to Justin Beiber too! and singer1.name become Justin too! I mean....everywhere!!



// -------------------- De-initializers --------------------

// Deinitializers : code that gets run when an instance of class is destroyed

class People {
    var name: String = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    // deinitializers : this will be called when the People instance is being destroyed
    deinit {
        print("\(name) is no more!")
    }
}

// Create 3 instances from People class
for _ in 1...3 {
    let person = People()
    person.printGreeting()
}



// -------------------- Mutability --------------------
// Classes don't need "mutating" keyword

class Singer2 {
    var name: String = "Taylor Swift"
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)

// If you want to stop user from changing internal value of the class, use "let" instead of var
