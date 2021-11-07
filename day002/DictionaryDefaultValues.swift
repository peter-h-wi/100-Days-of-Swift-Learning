// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/23/2021

import UIKit

// If a key doesn't exist, the dictionary returns nil.
// However, if we use default value, it returns the value instead of nil.

let favoriteFood = [
    "Luke": "Pizza",
    "Nate": "Hamburger",
    "Shuan": "Pasta",
    "Gnabry": "Saugsage",
    "Header": "Hamburger"
]

favoriteFood["Luke"] // returns "Pizza"

favoriteFood["John"] // returns nil

favoriteFood["John", default: "Unknown"] // returns "Unknown"