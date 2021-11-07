// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/03/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit


func watch(action: (String) -> String) {
    print("I am going to a theater.")
    let message = action("Parasite")
    print(message)
    print("It was cool.")
}

watch { (movie: String) -> String in
    return "I am watching \(movie)"
}

// Swift knows the parameter to that closure must be a string,
// so we can remove it.

watch { movie -> String in
    return "I am watching \(movie)"
}

// Swift also knows that the closure must return a string,
// so we can remove that.

watch { movie in
    return "I am watching \(movie)"
}

// As the closure only has one line of code that must be the one that returns the value
// so we can rmove the "return" keyword.

watch {movie in
    "I am watching \(movie)"
}

// Swift has a shorthand syntax that lets you go even shorter.
// Rather than writing "movie in"
// We can let Swift provide automatic names for the closure's parameters.
// These are named with a dollar sign, then a number counting from 0.
watch {
    "I am watching \($0)"
}


// [ When should you use shorthand parameter names? ]
// Special shorthand parameter syntax ==> $0, $1, $2 ...

// 1. If there are many parameters, don't use it.
//    If you use it, it's get complicated what is what

// 2. If the function commonly used, use it.

// 3. If the shorthand names used several times in your method,
//    use a real name.

// The point is, if your code is easy to read and understand.
