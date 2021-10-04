// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/03/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

let string = "Start yesterday is better than start tomorrow."

// .count : read the number of characters in a string
print(string.count) 

// .hasPrefix() : return true if the string starts with specific letters
print(string.hasPrefix("bet"))

// .uppercased() : uppercase a string
print(string.uppercased())

// .sorted() : sort the letters of the string
print(string.sorted())

// to check if a string is empty
// DO IT
if string.isEmpty {
    // this return false if the string has any letters
}
// DO NOT LIKE THIS
if string.count == 0 {
    // this needs to count all the letters in the string
}

/* [String is structs]
Unlike many other languages, strings are structs in Swift.
Even integers, arrays, dictionaries, and booleans are structs in Swift.

By making strings as structs, we can handle letters including emojis, which are made up of multiple special characters, effectively without using a lot of stand-alone functions.
*/