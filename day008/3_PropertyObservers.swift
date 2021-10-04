// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/03/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit


// Property observers: Let you run code before or after any property changes.

struct Travel {
    var destination: String
    var distance: Int {
        didSet {
            print("The distance to \(destination) is now \(distance)")
        }
    }
}

// didSet: when the distance changes, this will run some code
// willSet: (barely used) take action before a property changes

var travel = Travel(destination: "Chicago", distance: 500)
travel.distance = 300
travel.distance = 100
travel.distance = 0

/* [ When to use Property Observers]
Most of time, property observers are not required (just nice to have.)
we can just update a property and then call a function.

However, we use it for "convenience"
    ==> I don't want to remember that we need to call a function when a property is updated
    ==> so use "didSet", then it will "always" run.

When not to use
    ==> when the property observer does all sorts of slow work
    ==> then, single change can take long time, leading to many problems.
*/

/* [ When to use willset rather than didSet]

1. most of the time, you will use "didSet"
    ==> because we want to take action after the change has happened
        so we can update our user interface, save changes, or whatever.
2."willSet" is used, when you need to know the state of your program before a change is made
    ==> for example, willSet is used to handle animation
    ==> so that it can take a snapshot of the user interface before a change
    ==> When it has both the "before" and "after" snapshot
    ==> it can compare the two to see all the parts of the user interface
    ==> that need to be updated.
*/