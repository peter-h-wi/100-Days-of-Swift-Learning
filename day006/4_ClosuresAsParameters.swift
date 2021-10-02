// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/02/2021

import UIKit

let watching = {
    print("I am watching movie now")
}

// () -> Void : "Accepts no parameters, and return Void"
func goingToCine(action: () -> Void) {
    print("We just arrived at the movie theater.")
    action()
    print("The movie just finished!")
}

// call the function
goingToCine(action: watching)

// why we use it?
// 1. main process can pass closures, and keep going without waiting waiting all work process done.