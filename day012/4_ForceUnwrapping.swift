// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/07/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

let str = "24"
let number = Int(str)

// this makes "number" an Optional Int
// because you might have tried to conver a string like "Pizza" rather than "24"

// but you are sure that the code is safe, so you can force unwrap the result
// by writing "!" after "Int(str)"

let number2 = Int(str)!
// then it makes "number2" a regular Int rather than an Int?.

// However, if str was something that can't be an integer, your code will crash.

// [ When to use ForceUnwrapping ]
// 1. If it's 100% sure to be safe.
// 2. when you use "randomElement()" with enums.