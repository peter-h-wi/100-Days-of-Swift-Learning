// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/03/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// Structs can be given their own variables and constants, and their functions,
// then created and used however you want.

struct Animal {
    var name: String
}

var dog = Animal(name: "Dog")
print(dog.name)

dog.name = "Shiba"


// [Difference between a struct and a tuple]

// Tuple is a just a struct without a name, like an anonymous struct.
struct User {
    var name: String
    var age: Int
    var city: String
}
// this can be (name: String, age: Int, city: String)

// However, it's annyoing to use tuple again and again
// If you have several functions taht work with user information,
// <1> with struct
func authenticate(_ user: User) { ... }
func showProfile(for user: User) { ... }
func signOut(_ user: User) { ... }

// <2> with tuple
func authenticate(_ user: (name: String, age: Int, city: String)) { ... }
func showProfile(for user: (name: String, age: Int, city: String)) { ... }
func signOut(_ user: (name: String, age: Int, city: String)) { ... }

// <1> struct : easy to add a new property
// <2> tuple : hard to add a new property

// Thus, use tuples when you want to return two or more arbitrary pieces of values from a function
// prefer structs when you have some fixed data you want to send or receive multiple times.