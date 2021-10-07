// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/06/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit


// Protocol: defines how structs, classes, and enums ought to work
//      ==> set rules like what methods, what properties they should have
// similar to interface.
protocol Eatable {
    // can be read only or read/write
    var amount: Int { get set}
}

struct Food: Eatable {
    var amount: Int
}

func displayFood(thing: Eatable) {
    print("The food is \(thing.amount)g left")
}


// instead of "this sell() method must accept a Phone object"
//          ==> "this method can accept anythiing that conforms to the Tradable protocol."
//      ==> can be phone, car, stock, and so on.

// <case 1> sell method only works with phone.
struct Phone {
    var price: Double
}

func sell(_ phone: Phone) {
    print("I am selling the phone at \(phone.price).")
}

protocol Tradable {
    var name: String { get, set}
    var price: Double { get, set }
}

struct Watch: Tradable {
    var name: String
    var price: Double
    var brand: String
}

struct Car: Tradable {
    var name: String
    var price: Double
    var yearMade: Int
}

struct Stock: Tradable {
    var name: String
    var price: Double
    var company: String
}

func buy(_ item: Tradable) {
    print("I am buying \(item.name) at \(item.price)")
}