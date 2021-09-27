// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/26/2021

import UIKit

var hour = 1

repeat {
    print(hour)
    hour += 1
} while hour <= 24

print("It's a next day.")

// Unlike While Loops, this loop always excutes at least once.
// Because the condition comes at the end of the repeat.