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



// example: string adder

func adder(_ messages: [String], using closure: (String, String) -> String) {
    // start with a total equal to the first message
    var current = messages[0]

    // loop over all the messages in the array, counting from index 1 onwards
    for message in messages[1...] {
        // call our closure with the current message and the array element, assigning its result to our current message
        current = closure(current, message)
    }

    // send back the final current message
    return message
}

let strings = ["hi h", "ow a", "re you doi", "ng"]

let wholeMsg = adder(strings) { (runningMsg: String, next: String) in
    runningMsg + next
}

print(wholeMsg)

let backWordMsg = adder(strings) { (runningMsg: String, next: String) in
    next + runningMsg
}

let shortCut = adder(strings, using: +)