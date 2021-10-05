// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/05/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// classes vs. structs : how they deal wit constants

// structs: if the struct is constant, the property can't be changed.
// classes: even if the struct is constant, the property can be changed.
// so structs need "mutating" keyword, but classes don't.

class Dog {
    var name = "Tayft"
}

// tayft class is constant, but still the name can be changed.
let tayft = Dog()
tayft.name = "Swilor"
print(tayft.name)

// if you want to stop the behavior, make the property constant.
class Cat {
    let name = "Lyft"
}


/* [ why variable properties in constant classes be changed? ]

1. Variable classes can have variable properties changed.
2. Constant classes can have variable properties changed.
3. Variable structs can have variable properties changed.
4. However, constant structs cannot have variable properties changed.

Why?
1. classes ==> points to some data in memory.
2. structs ==> is just one value

<structs>
if we change a property inside structs,
    - it actually destroys and recreates the entire structs
    ==> so, constant sturct <-> changing properties

<classes>
if we change a property inside classes,
    - you can change any part of their properties without destorying/rectreate the classes
    ==> so, constant classes can have their variable properties changed freely.



*/