// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/23/2021

import UIKit

// Use it when we need to know how the value is stored.
// For example, we send data to somewhere, the receivers need to know
// which value the data indicates.

enum Day: Int {
    case mon
    case tue
    case wed
    case thu
    case fri
    case sat
    case sun
}

let today = Day(rawValue: 3)

enum Weekend: Int {
    case sat = 10
    case sun = 20
}

let soccer = Weekend(rawValue: 20)