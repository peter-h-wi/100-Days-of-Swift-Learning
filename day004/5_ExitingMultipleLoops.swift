// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/26/2021

import UIKit

// nested loop
for i in 0...23 {
    for j in 0...59 {
        print("It's \(i):\(j)")
    }
}

// If we want to exit part-way through
// 1. give the ouside loop a label,
// 2. add condition inside the inner loop, using "break outerLoop"

outerLoop: for i in 0...23 {
    for j in 0...59 {
        print("It's \(i):\(j)")

        if (i == 12 && j == 30) {
            print("It's lunch time!")
            break outerLoop
        }
    }
}

// regular break        ==> inner loop is exited
// break outer loop     ==> outer loop is exited
//  ** Very usefult when you use very nested loops.