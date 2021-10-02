// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/26/2021

import UIKit

// Common to use While loops to make infite loops
// 1. use "true" as your condition.
// 2. make sure you have a check to "exit"

var myAge = 0

while true {
    print("Still Alive")
    myAge += 1

    if myAge == 147 {
        break
    }
}


// The usage of infinite loop
// 1. your app runs until you close the app
// 2. check user input
// 3. check your connection with carrier