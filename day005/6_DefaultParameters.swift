// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/27/2021

import UIKit

func greet(_ name: String, evening: Bool = false) {
    if evening != true {
        print("Good morning, \(name)!")
    } else {
        print("Good evening, \(name)!")
    }
}

greet("Rooney")
greet("Amy", evening: true)