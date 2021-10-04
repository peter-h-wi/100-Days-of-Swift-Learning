// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/03/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// By default, Swift won't let you write methods that change properties
// In order to change a property inside a method,
//      you need to mark it using the "mutating" keyword
struct Animal {
    var name: String

    mutating func makeUnknown() {
        name = "Unknown"
    }   
}

var dog = Animal(name: "Robin")
dog.makeUnknown()

// Tip.
// 1. Marking methods as mutating will stop the method from being called on constant structs,
//    even if the method itself doesn't actually change any properties.
// 2. A method that is not marked as mutating cannot call a mutation function 
//      - you must mark them both as mutating
