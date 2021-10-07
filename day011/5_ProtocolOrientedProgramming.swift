// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/06/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// Protocol-oriented programming: crafting your code around protocols and protocol extensions

protocol Eatable {
    var name: String { get set}
    func taste()
}

// you can speecify only te existing functions.
extension Eatable {
    func taste() {
        print("\(name) tastes good.")
    }
}

struct Pizza: Eatable {
    var name: String    
}

let pizza = Pizza(name: "Pizza")
pizza.taste()


/* [ Protocol-oriented programming vs. Object-oriented programming ]
1. there is no practical difference.
    - a. they can place functionality into objects
    - b. they use access control to limit what that functionality can be called
    - c. they make one class inherit from another, and more.
2. difference 
    - a. POP: POP developers lean heavily on the prrotocol extension functionality of Swift to build types that get a lot of their behavior from protocols.
        ==> easier to share functionality across many types


*/