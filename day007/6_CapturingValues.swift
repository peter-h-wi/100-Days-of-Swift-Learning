// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/03/2021

import UIKit


// If you use any external values inside your closure, Swift captures them
// - stores them alongside the closure, so they can be modified even if they don't exist any more.

// function returns a closure.
// the closure has String as parameter, and returns nothing.
func watch() -> (String) -> Void {
    return {
        print("I am watching \($0)")
    }
}

let result = watch()
result("Avatar")

// Closure capturing happens if we create values in watch()
// that get used inside the closure.

func watch2() -> (String) -> Void {
    var counter = 1 // create the variable outside the return

    return {
        print("\(counter). I am watching \($0)")
        counter += 1
    }
}
let result2 = watch2()
// Even though that "counter" variable was created inside watch(),
// it gets captured by the closure so it will still remain alive for that closure.

// so if we call result("Avatar") multiple times, the counter will go up and up.
result2("Avatar")
result2("Avatar")
result2("Avatar")


// [Why do Swift's closures capture values?]

// compare those two functions that generate random number which is different from the previous one.
// 1. it doesn't capture values.
func makeRandomNumberGenerator() -> () -> Int {
    return {
        var previousNumber = 0
        var newNumber: Int

        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber

        previousNumber = newNumber
        return newNumber
    }
}
let generator = makeRandomNumberGenerator()

for _ in 1...10 {
    print(generator())
}
// result: 1,2,1,1,3,1,3,3,3. ==> Generate same number from the previous one.
// reason: whenever you call the closure, "previousNumber" and "newNumber" get reset.

// 2. it capture values.
func makeRandomNumberGenerator2() -> () -> Int {
    var previousNumber = 0 // the previousNumber is captured.

    return {
        var newNumber: Int

        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber

        previousNumber = newNumber
        return newNumber
    }
}

let generator2 = makeRandomNumberGenerator2()
for _ in 1...10 {
    print(generator2())
}
