// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/05/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// copy a struct, both the original and the copy are different things.
//  ==> changing one won't change the other.

// copy a class, both original and copy point to the same thing
//  ==> changing one changes the other.

class Dog {
    var name = "Rachael"
}

var pet = Dog()
print(pet.name)

var petCopy = pet
petCopy.name = "Robert"
print(petCopy.name)
print(pet.name)


struct Cat {
    var name = "Romio"
}

var pet2 = Cat()
print(pet2.name)

var pet2Copy = pet2
pet2Copy.name = "Juliet"
print(pet2Copy.name)
print(pet2.name)

/* Output

Rachael
Robert
Robert
Romio
Juliet
Romio

*/

/* [ Why copies of a class share their data? ]

Structs : value type        ==> Deep copy
Classes : reference type    ==> Shallow copy

==> Swift developers perfer Structs for their cusom types.

Thus, use Classes when you want the data to be shared somehow, 
    rather than having lots of distinct copies.
*/