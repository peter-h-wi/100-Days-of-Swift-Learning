// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/26/2021

import UIKit


func printTime(hour: Int, second: Int) -> String {
    return ("It's \(hour):\(second)")
}

let result = printTime(hour: 3, second: 10)
print(result)

// we can provide two names for each parameter 
// ====> one for external use, and one for internal use.

func sayBye(to name: String) {
    print("Bye, \(name)!")
}

sayBye(to: "Peter")
