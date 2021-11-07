// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/05/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// final: no other class can inherit from the class.
//        ==> they can't override your methods in order to change your behavior.

final class Baby {
    var name: String
    var birthYear: Int

    init(name: String, birthYear: Int) {
        self.name = name
        self.birthYear = birthYear
    }
}

/* [ When to use final ]

1. If your class does something really important that mustn't be replaced.
2. If you have clients and you don't want them breaking the way you code works.
*/