// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/26/2021

import UIKit

// "..<" creates ranges up to but excluding the final value
// 1..<4 =====>   1, 2, 3
// "..." creates ranges up to and including the final value
// 1...4 =====>   1, 2, 3, 4

// Useful with switch blocks

let grade = 99

switch grade {
case 0..<60:
    print("F")
case 60..<70:
    print("D")
case 70..<80:
    print("C")
case 80..<90:
    print("B")
case 90...100:
    print("A")
default:
    print("Grade out of range.")
}

// Useful in an array
let items = ["iPhone", "iPad", "iMac", "iCloud", "iPod"]
print(items[0])
print(items[1...3]) // if the index of 3 
print(items[2...])