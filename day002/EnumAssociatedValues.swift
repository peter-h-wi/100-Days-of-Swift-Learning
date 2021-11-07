// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/23/2021

import UIKit

enum Sports {
    case basketball(opponent: String)
    case soccer(league: String)
    case football(stadium: String)
    case tennis(opponent: String)
}

let soccer = Sports.soccer(league: "Premier League")
let tennis = Sports.tennis(opponent: "Nadal")

enum Weather {
    case sunny
    case windy(direction: String, speed: Double)
    case rainy(change: Double, amount: Double)
    case snowy(change: Double, amount: Double)
}