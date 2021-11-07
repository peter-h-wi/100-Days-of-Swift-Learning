// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/27/2021

import UIKit

// All parameters passed into a function are constants, which can't be changed.
// However, if we pass them as inout, they can be changed inside the function.
// The changes reflect in the original value outside the function.

func tripleInPlace(number: inout Int) {
    number *= 3
}

// 1. make "var"
// 2. pass the parameter using an ampersand "&" before its name
var myNum = 20
tripleInPlace(number: &myNum)