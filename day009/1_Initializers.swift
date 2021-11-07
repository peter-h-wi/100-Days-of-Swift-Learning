// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/04/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// [1] Without custom Initializer
struct Student {
    var id: Int
}

// In this case, we must provide a name
var student = Student(id: 730123456)

// [2] With custom Initializer
struct Student2 {
    var id: Int

    // make sure all properties have avalue before the initializer ends
    init() {
        id = 000000000
        print("Create a new student!")
    }
}

// our initializer accepts no parameters,
var student2 = Student2()
student2.id = 123456789



// [ How Memberwise Initializers Work]

// 1. if any of your properties have default values
//      they will be incoporated into the initializer as default parameter values.
struct Member {
    var name: String
    var yearsRegistered = 0
}
let robin = Member(name: "Robert Robin")
let duke = Member(name: "Alison Duke", yearsRegistered: 4)
// ==> you can fill in only the parts you need to

// 2. if you create an intializer of your own
//      you can remove the memberwise initializer
struct Manager {
    var name: String
    var yearsManaging = 0

    init() {
        self.name = "Unknown"
        print("Creating an unknown manager...")
    }
}
// This one is not working.
//      let potter = Manager(name: "Harry Potter")
// Because as soon as you add a custom initializer for your struct
// the default memberwise initializer goes away.

// 3. If you want the default memberwise initializer to stay
//      move your custom initializer to an extension

struct Engineer {
    var name: String
    var yearsWorking = 0
}

extension Engineer {
    init() {
        self.name = "Unknown"
        print("Creating an unknown enginner...")
    }
}

let park = Engineer(name: "Arthur Park")
let smith = Engineer()