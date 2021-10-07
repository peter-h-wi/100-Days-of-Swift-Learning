// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/06/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// Extensions allow you to add methods to existing types

extension Double {
    func squared() -> Int {
        return self * self
    }
}

let number = 5.5
number.squared()

// swift doesn't let you add stored properties in extensions, so use computed properties

extension Int {
    var isOdd: Bool {
        return self % 2 == 1
    }
}

/* [ When to use Extensions ]
1. Adding new methods
2. Adding new computed properties
3. Organizing our own code
    ==> a. Conformance grouping: adding a protocol conformance to a type as an extension,
                                adding all the required methods inside that extension
                            ==> easy to understand how much code a developer needs to keep in their head while reading an extension

    ==> b. Purpose grouping: creating extensions to do specific tasks
                            ==> easy to work with large types
                            eg) extension specifically to handle loading and saving of that type
                            


*/