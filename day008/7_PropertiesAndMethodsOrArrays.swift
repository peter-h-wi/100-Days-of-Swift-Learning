// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/03/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// Arrays are also structs

var students = ["Romio", "Alice"]

// .count: number of items
print(students.count)

// .append(): add a new item
students.append("John")

// .firstIndex(): locate any item inside an array
students.firstIndex(of: "Alice")
// this will return 1 because arrays count from 0.

// .sorted(): sort alphabetically
print(students.sorted())

// .remove(): remove an item
students.remove(at: 1)
