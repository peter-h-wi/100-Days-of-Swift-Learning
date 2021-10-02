// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/01/2021

import UIKit

// parameters are listed inside the open braces

let riding = { (vehicle: String) in
    print("I am riding a \(vehicle)")
}

riding("bus")

//                          Functions vs. Closures
//  Use parameter labels?       Yes         No


func move(from origin: String, to destination: String) {
    // code
}

let movement = { (origin: String, destination: String) in
    // code
}
// "in" is used to mark the end of the parameter list
//      and the start of the closure's body itself.