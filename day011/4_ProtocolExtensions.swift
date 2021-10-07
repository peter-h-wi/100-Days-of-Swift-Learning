// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/06/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// Extend the protocol

let names = ["Romio", "Juliet", "Arthur", "Selena"]
let cities = Set(["Paris", "Chicago", "New York"])

// Collection is a protocol, but we can add a method to it.
extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

names.summarize()
cities.summarize()

// Protocol extensions are used everywhere in Swift
// allSatisfy() work for all three stuffs.
// array
let numbers = [1,2,3,4,5,6]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }

// set
let numbers2 = Set([2,4,5,7,8,9])
let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }

// dictionary
let numbers3 = ["five": 5, "nine": 9, "eleven": 11]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }

/*
How allSatisfy() work? They used a protocol extension.
The protocol is called Sequence ==> arrays, sets, and dictionaries conform to.
==> allSatisfy() method immediately became available on all those types, sharing exactly the same code.
*/