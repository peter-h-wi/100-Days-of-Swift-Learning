// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/26/2021

import UIKit

let today = "Mon"

switch today {
case "Mon":
    fallthrough // execution to continue on the next case.
case "Wed":
    print("I have two classes")
case "Tue":
    fallthrough
case "Thu":
    print("I have three classes")
case "Fri":
    print("I have one class")
default:
    print("I have no classes")
}