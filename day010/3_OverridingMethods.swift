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

    func makeNoise() {
        print("deo deo deo deo")
    }
}

let justCar = Car("civic", 2015)
justCar.makeNoise()

class MuscleCar: Car {
    init(name: String) {
        super.init(name: name, yearProduced: 2020)
    }

    override func makeNoise() {
        print("Woooooong! woong!")
    }
}

let mustang2020 = MuscleCar("Mustang")
mustang2020.makeNoise()


/* [ Why to override a method ]
You can customize the functions and stuffs.
you can create subclasses of Apple's table and override the parts you want to change.
*/