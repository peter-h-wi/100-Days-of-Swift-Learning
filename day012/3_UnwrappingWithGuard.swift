// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/07/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

// another way to "if let" is "guard let"

func getAnswer(_ answer: String?) {
    guard let unwrapped = answer else {
        print("Input invalid answer.")
        return
    }
    // from here, you are safe.
    print("Your answer is \(unwrapped)."
    )
}

/* [ if let vs. guard let]
guard: exit the current function, loop, or condition if the check fails.
        ==> so any values you unwrap using it will stay around after the check.
*/

func getYearMade() -> Int? {
    2018
}

func printYearMade() {
    if let year = getYearMade() {
        print(year)
    }
}

func printYearMade2() {
    guard let year = getYearMade() else {
        return
    }

    print(year)
} 