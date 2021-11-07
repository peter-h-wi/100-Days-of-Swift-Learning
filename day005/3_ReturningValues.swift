// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/26/2021

import UIKit

func printTime(hour: Int, second: Int) -> String {
    return ("It's \(hour):\(second)")
}

let result = printTime(hour: 3, second: 10)
print(result)


// expression : that can be assigned to a variable
// statement : actions such as creating variables, starting a loop, or checking a condition

// You can skip using the "return" keyword when we have only one expression in our function
// [Example 1]
// 1. This one works
func addition() -> Int {
    return 1+2+3
}
// 2. This one also works
func newAddition() -> Int {
    1+2+3
}

// [Example 2]
// 1. This one works
func overHundred(number: Int) -> String {
    if number >= 100 {
        return "Over hundred"
    } else {
        return "Below hundred"
    }
}

// 2. It doesn't work because we have actual statements - if and else
/*
func newOverHundred(number: Int) -> String {
    if number >= 100 {
        "Over hundred"
    } else {
        "Below hundred"
    }
}
*/

// 3. So we can use the ternary operator. It works
func thisOverHundred(number: Int) -> String {
    number >= 100 ? "Over hundred" : "Below hundred"
}


// <How To Return multiple values>
// 1. Use Tuple, such as (name: String, height: Double)
// 2. Use collection, such as an array or a dictionary

// [Example 1 - array]
func getColor() -> [String] {
    ["Blue", "Red", "Pink"]
}

let color = getColor()
print(color[0])

// [Example 2 - dictionary]
func getName() -> [String: String] {
    ["first": "Peter", "last": "Parker"]
}

let name = getName()
print(name["first"])

// [Example 3 - tuples]
func newGetName() -> (first: String, last: String) {
    (first: "Peter", last:"Parker")
}

let newName = newGetName()
print(newName.first)
