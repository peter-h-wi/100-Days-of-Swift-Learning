// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/07/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

var ingredients: [String]? = nil

// what happen if we use ingredients.count ?
// ingredietns.count is unsafe.
// so unwrapping is needed : look inside the optional and see what's there.
// 1. "if let" syntax: unwraps with a condition.

if let unwrapped = ingredients {
    print("\(unwrapped.count) ingredients")
} else {
    print("No ingredients.")
}
// if ingredients hold items, it will be put inside unwrapped as a regular array
//      then, we can read its count property inside the condition.
// if ingredients are empty, the else code will be run.

func getAge() -> Int? {
    5
}

if let hisAge = getAge() {
    print("He is \(hisAge) years old.")
} else {
    print("No information.")
}
// Swift will not let us use optionals without unwrapping them first.