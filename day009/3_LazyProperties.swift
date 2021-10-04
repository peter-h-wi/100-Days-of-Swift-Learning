// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/04/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// Performace optimization wise, Swift lets you create some properties
// only when they are needed.

struct Company {
    init() {
        print("Creating a company!")
    }
}

struct Team {
    var name: String
    var company = Company()

    init(name: String) {
        self.name = name
    }
}

// print "Creating a company!" after declaring siri.
var siri = Team(name: "Siri Development Team") 

// if we don't always need the company for a particular team,
// we add the lazy keyword to the company property.
// then Swift will only create the Company struct when it's first accessed

struct Team2 {
    var name: String
    lazy var company = Company()

    init(name: String) {
        self.name = name
    }
}

var appleMusic = Team2(name: "Apple Music Development Team")
// print "Creating a company!" after accessing .company
var comp = appleMusic.company

/* [ When to use lazy properties]
                            computed property vs. lazy properties
delay until it's used               yes                 yes
redo whenever used                  yes                 no
the value is stored                 no                  yes
==> 1. Lazy properties, provide extra performance when they aren't used
    2. extra performance when they are used repeatedly (because their value is cached)

<Not to use>
1. can accidentally produce work where you don't expect it.
    eg) while building a game, because of copmlex lazy property, your game slows down.
        ==> then just use stored properties
2. stroing their result might be unnecessary or pointless
    eg) 1. we will not use the value again.
        2. the value needs to be recalculated frequently
3. you can't use lazy properties on constant structs

*/