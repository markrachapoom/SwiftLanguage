/*

    Day 9 : Structures Part Two
    - Initializers
    - Referring to the current instance (self)
    - Lazy properties
    - Static properties and methods
    - Access control

*/

// -------------------- Initializers --------------------------------------

// Initializers
"""

Initializers are special methods
that provide different ways to create your struct.
All structs come with one by default, called their memberwise initializer
– this asks you to provide a value for each property
when you create the struct.

"""

struct User {
    var username: String
}

var user = User(username: "Two straws")

"""

We can provide our own initializer to replace the default one.
For example, we might want to create all new users as “Anonymous”
and print a message, like this:

"""

struct User2 {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user2 = User2()
user2.username = "Twostraws"
print(user2.username)



// -------------------- Referring to the current instance (self) ----------

// Referring to the current instance

struct Person2 {
    var name: String
    
    init(name: String) { // The parameter for init
        print("\(name) was born!")
        self.name = name
    }
}



// -------------------- Lazy properties -----------------------------------

// Lazy properties
// you do not actually need variable sometimes
// lazy is here for getting ready when you need it

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person3 {
    var name: String
    
    // But what if we didn’t always need
    // the family tree for a particular person?
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")




// -------------------- Static properties and methods ---------------------

// Static Properties and methods
// share value of the same type of struct everywhere!
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed2 = Student(name: "Ed")
let taylor = Student(name: "Taylor")




// -------------------- Access control ------------------------------------

// Access Control
// Stop people from accessing the value

struct Employee {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
}

let eddy = Employee(id: "36434")

"""
Once that "eddy" has been created,
we can make their id be private
so you can’t read it from outside the struct
– trying to write ed.id simply won’t work.
"""
// You can't print eddy.id, it will protect reader from accessing the value
