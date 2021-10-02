// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/02/2021

import UIKit

// Trailing Closure Syntax
// Rather than pass in your closure as a parameter,
// You pass it directly after the function inside braces.

func goingToCine(action: () -> Void) {
    print("We just arrived at the movie theater.")
    action()
    print("The movie just finished!")
}

goingToCine() {
    print("We are watching movie.")
}

// as there are not any parameter, we can eliminate the parenthesis
goingToCine {
    print("We are watching movie.")
}


func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation")
    animations()
}

// call the function without a trailing closure
animate(duration: 3, animations: {
    print("Fade in the image")
}) // }) looks not good

// call the function with trailing closure
animate(duration: 3) {
    print("Fade in the image")
}