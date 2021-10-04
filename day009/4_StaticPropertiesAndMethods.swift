// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/04/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// static: You can share specific properties and methods across all instances of the struct
struct Member {
    static var teamSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Member.teamSize += 1
    }
}

print(Member.teamSize)


/* [ When to use static properties and methods ]
1. to store common functionality you use across an entire app
    eg) stor some common information, such as the URL to the app on the App Store
*/
struct MyApp { // in this case, actually using Enum is better.
    static let appURL = "..."
}
// in this case I can use,
MyApp.appURL // whenever I want

static var entropy = Int.random(in:1...1000)

static func getEntropy() -> Int {
    entropy += 1
    return entropy
}