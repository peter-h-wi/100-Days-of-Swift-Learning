// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/05/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

class Car {
    var name: String
    var yearProduced: Int

    init(name: String, yearProduced: Int) {
        self.name = name
        self.yearProduced = yearProduced
    }
}

class MuscleCar: Car {
    init(name: String) {
        super.init(name: name, yearProduced: 2020)
    }
}

/* [ Classes don't have a memberwise iniitalizer ]

Struct: You can create new instances of the struct by specifying its properties.
Classes: You can't

Because, classes have inheritance, which would make memberwise initializers difficult to work with.
thus, authors of classes must write their own initializer by hand.
This way, you can add properties as much as you want without affecting the initializer for your class, and affecting others who inherit from your class.
And when you decide to change your initializer, you are doing yourself, adn are therefore fully aware of the implications for any inheriting classes.

*/