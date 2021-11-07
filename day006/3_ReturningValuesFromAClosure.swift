// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/02/2021

import UIKit

// without return
let playing = {(sport: String) in
    print("I am playing \(sport)")
}

// with return
let playingWithReturn = {(sport: String) -> String in
    return "I am playing \(sport)"
}

let message = playingWithReturn("Soccer")
print(message)


// return a value, but no parameters
let move = {(origin: String, destination: String) in 
    print("Move from \(origin) to \(destination)")
}

let movement = {(origin: String, destination: String) -> Bool in
    print("Move from \(origin) to \(destination)")
    return true
}

let moving = {() -> Bool in
    print("Moving now.")
    return true
}

// function
func moveFunc() -> Bool {
    return true
}
