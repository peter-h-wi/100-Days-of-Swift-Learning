// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/03/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// methods: Functions inside structs

struct Subscription {
    var subscribers: Int

    func getSubscriptionFee() -> Int {
        return subscribers * 2
    }
}

let appleMusic = Subscription(subscribers: 30_000_000)
appleMusic.getSubscriptionFee()


/* [Difference between methods and functions]
1. methods belong to a type, such as structs, enums, and classes <-> functions don't
*/