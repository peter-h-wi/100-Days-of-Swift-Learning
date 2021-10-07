// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/06/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// Protocol Inheritance: Inherit from another
//  ==> Unlike with classes, you can inherit from multiple protocols at the same time before you add your own cutomizations on top.

protocol Tradable {
    func calculatePrices() -> Double
}

protocol Eatable {
    func taste()
}

protocol Deliverable {
    func deliverIn(minutes: Int)
}

protocol Pizza: Tradable, Eatable, Deliverable { }


// Protocol Inheritance: You can build new protocol based on existing protocols
// ==> Same with classes
// Why use it? In order to combine functionality for common work.
// Instead of making two different but similar protocols, such as Cake and BirthdayCake,
protocol Bread {
    var price: Double { get set }
    var calorie: Int { get set }
}

protocol Cake: Bread {
    var Ingredients: [String] { get set }
}

protocol BirthdayCake: Cake {
    var candleNum: Int { get set }
}

// there are other protocols like: Equatable, Comparable. Comparable inherits from Equatable