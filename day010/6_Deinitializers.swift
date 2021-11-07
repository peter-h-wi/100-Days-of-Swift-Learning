// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/05/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

class Dog {
    var name = "Robert"

    init() {
        print("\(name) is born!")
    }

    deinit {
        print("\(name) is gone!")
    }

    func barking() {
        print("Wooh wooh, I am \(name)")
    }
}

for _ in 1...3 {
    // create a object and destroyed
    let dog = Dog()
    dog.barking()
}



/* Output

Robert is born!
Wooh wooh, I am Robert
Robert is gone!
Robert is born!
Wooh wooh, I am Robert
Robert is gone!
Robert is born!
Wooh wooh, I am Robert
Robert is gone!

*/

/* [ Why classes have deinitializers and structs don't? ]

deinit <-> init()

<struct>
- struct don't have deinitializers => we can't tell when they are destroyed
- but, we can create a struct inside a method and the methods ends, the struct is destroyed.
- they don't need the deinitializers as they are just their own unique copies.

<class>
- classes have complex copying behavior that means several copies
- so, it's hard to say if the class instance is destroyed
    (meaning, when the final variable pointing to it has gone away.)
- how do we know? Automatic Referencing Counting (ARC) tracks how many copies of each class instance exists
- so, when ARC is 0, Swift call denitializer and destroy the object.

*/