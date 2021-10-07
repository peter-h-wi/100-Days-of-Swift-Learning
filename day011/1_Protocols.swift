// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/06/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit


// Protocol: a way of describing what properties and methods something must have.
// similar to interface.
protocol Eatable {
    // have an amount, that can be read or written.
    var amount: Int { get set}
}

struct Food: Eatable {
    var amount: Int
}

func displayFood(thing: Eatable) {
    print("The food is \(thing.amount)g left")
}