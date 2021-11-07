// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/03/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit


// () -> Void : accepts no parameters and return nothing

// (type) -> Void : accepts parameters and return nothing

func watch(action: (String) -> Void) {
    print("I am going to a theater.")
    action("Parasite")
    print("It was cool.")
}

watch { (movie: String) in
    print("I am watching \(movie)")
}



let venmo = { (address: Int) in
    print("Sending money to \(address)")
}

// assign the closure to the function
func finTechApp(name: String, sending: (Int) -> Void) {

}

