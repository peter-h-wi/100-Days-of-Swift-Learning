// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/04/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// Access control lets you restrict which code can use properties and methods.

struct Student {
    var id: String
    
    init(id: String) {
        self.id = id
    }
}

let roberts = Student(id: "223344")

// once that student has been created,
// we can make their id be private so you can't read it from outside the struct

struct Student2 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My student id is \(id)"
    }
}

// public: lets all other code use the property or method.

/* [ Why we use access control? ]
1. If something needs to accessed very carefully, probably private
    ==> Then use setter and getter
    ==> so that we can update user interface accordingly
2. If it's internal use, use private



*/