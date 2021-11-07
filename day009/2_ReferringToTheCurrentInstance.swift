// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/04/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// self : points to whatever instance of the struct is currently being used.
//      ==> usefult when you create initializers that have the same parameter names as your propoerty.

struct Teacher {
    var name: String

    // self.name on the left side is Teacher struct's name
    // name on the right side is the parameter, name: String, of init
    init(name: String) {
        print("\(name) was hired.")
        self.name = name
    }
}

// with self (same name)
struct Employee {
    var name: String
    var team: String
    
    init(name: String, team: String) {
        print("\(name) was hired.")
        self.name = name
        self.team = team
    }
}

// without self (different name)
struct Employee2 {
    var name: String
    var team: String
    
    init(name employeeName: String, team teamName: String) {
        print("\(name) was hired.")
        name = employeeName
        team = teamName
    }
}

