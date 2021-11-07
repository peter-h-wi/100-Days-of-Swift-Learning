// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/03/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

struct Animal {
    // "name" property is called "stored" properties
    var name: String 
    var isInsect: Bool

    //computed property: a property that runs code to figure out its value
    var animalType: String {
        if isInsect {
            return "\(name) is an insect"
        } else {
            return "\(name) is not an insect"
        }
    }
}

let ants = Animal(name: "Ants", isInsect: true)
print(ants.animalType)

// [Difference between stored properties and computed properties]

/* 
stored properties
    1. a value is stashed away in some memory to be used later
    2. Performance wise : Use when regularly used.
        ==> much faster than using a computed property.
    3. Dependencies : there might be dependency problems
computed properties
    1. a value is recomputed every time it's called
    2. Performance wise : Use when barely used.
        ==> save from having to calculate its value and store it somewhere.
    3. Dependencies : the value is always the latest
        ==> property observers mitigate the dependency problems of stored properties
*/
