// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/03/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit


func watch(action: (String, Int) -> String) {
    print("I am going to watch a moive.")
    let description = action("Avatar", 3)
    print(description)
    print("It was good.")
}

watch {
    "I am watching a movie, called \($0) with my \($1) friends."
}

watch { (movie: String, number: Int) -> String in
    return "I am watching a movie, called \(movie) with my \(number) friends."
}

// Theory: you can take as many parameters as you want.
// Practice: Usually take zero to three parameters ($0, $1, and $2)