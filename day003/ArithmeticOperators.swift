// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/26/2021

import UIKit

let firstQuarter = 3
let secondQuarter = 4
let thirdQuarter = 6
let lastQuarter = 2

let firstHalf = firstQuarter + secondQuarter
let secondHalf = thirdQuarter + lastQuarter

let total = firstHalf + secondHalf
let difference = firstHalf - secondHalf

let product = firstHalf * secondHalf
let divided = firstHalf / secondHalf
let remainder = firstHalf % secondHalf

// divided: firstHalf(7) / secondHalf(8) = 0 
// remainder: firstHalf(7) % secondHalf(8) = 7

// You can't compute with different types. For example, Double + Int
