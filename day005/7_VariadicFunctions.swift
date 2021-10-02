// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/27/2021

import UIKit

// variadic : accept any number of parameters of the same type
print("You", "and", "I")

// by writing "..." after its type, you can may any parameter variadic

func twice(numbers: Int...) { // this will handed to us as an array
    for number in numbers {
        print("twice of \(number) is \(number * 2)")
    }
}

twice(numbers: 1,2,3,4,5)

// when to use variadic functions
// open("pic1.jpg")
// open("pic1.jpg", "pic2.jpg", "description.txt", "runCode.swift")