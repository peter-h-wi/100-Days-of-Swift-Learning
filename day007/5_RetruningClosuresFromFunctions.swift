// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/03/2021

import UIKit

// As you can pass a closure to a function,
// You can get closures returned from a function.

// it uses -> twice
// 1st: specify your function's return
// 2nd: specify your closure's return


// watch() function that accepts no parameters, but returns a closure.
// The closure accepts a String parameter, but no return.
func watch() -> (String) -> Void {
    return {
        print("I am watching \($0)")
    }
}

let result = watch()
result("Avatar")

// this is technically allowable, but not really recommended.
let result2 = watch()("Avatar")




/* Benefits of using it.
1. I need a function to call, but I don't know what that function is.
    I know how to find out that function 
        - I know who to ask to find the function
        - but I don't know myself.
    example: I want to getnerate lots of random numbers, but I don't know what algorithm to use.
            All I know is taht if I call makeRandomGenerator(),
            I will get back a function I can call
            that will generate a new random number every time I call it.
        => We don't need to know what the actual random number generator does, or how it was created.
            Without this, we'd need to type the precise name of the function everywhere we wanted to use it.
2. We can change our mind whenever we want, jut by changing the function that creates the random number generator.
    All the places that call the function won't change, because they still call makeRandomGenerator()
        - If we want to change the algorithm,
        - Just change the returned closure in makeRandomGenerator()

==> I think, use functions like a variable..?

*/       
// Examples
print(Int.random(in: 1...10))

// function that returns int
func getRandomNumber() -> Int {
    Int.random(in: 1...10)
}
print(getRandomNumber())

// function that returns a closure
func makeRandomGenerator() -> () -> Int {
    let function = { Int.random(in: 1...10) }
    return function
}
let generator = makeRandomGenerator()
let random1 = generator()
print(random1)

// why don't we use getRandomNumber() instead of generator()...?
// because if the algorithm change,
// in the first case,
//      we need to change everything from "getRandomNumber" --> "getRandomNumber2"
// in the second case,
//      what we need to change is "generator = makeRandomGenerator()" --> "generator = makeRandomGenerator2()"
 
