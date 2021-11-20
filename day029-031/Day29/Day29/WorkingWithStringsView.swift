//
//  WorkingWithStringsView.swift
//  Day29
//
//  Created by peter wi on 11/20/21.
//

import SwiftUI


// components(separatedBy: ): it converts a single string into an array of strings by breaking it up wherever another string is found.
//      --> return "array of strings"
/* Example
 let input = "a b c"
 let letters = input.components(seperatedBy: " ")
 */
/* Example 2
 let input = """
             a
             b
             c
             """
 let letters = input.components(separatedBy: "\n")
 */


// randomElement(): return one random item from the array.
/* Example
 let letter = letters.randomElement()
 */


// trimmingCharacters(in: ): remove certain kinds of characters from the start and end of a string.
//      --> This uses a new type called CharacterSet, but this is used for removing whitespace and new lines (- this refers to spaces, tabs, and line breaks, all at once.)
/* Example
 let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
 */


/* Checking a string for misspelled words
 1. Create a word to check and an instance of UITextChecker
 let word = "swift"
 let checker = UITextChecker()
 
 2. Tell the checker how much of our string we want to check.
 let range = NSRange(location: 0, length: word.utf16.count)
    * UTF-16: character encoding
 
 3. Ask our text checker to report where it found by any misspelling in our word, passing in the range to check, a position to start within the range, whether it should wrap around once it reaches the end, and what language to use for the dictionary:
 let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
 
 4. Check misspelling was found. It uses Objective-C, so returns NSNotFound
 let allGood = misspelledRange.location == NSNotFound
 
 */

struct WorkingWithStringsView: View {
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func test() {
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
        
        let input2 = """
a
b
c
"""
        let letters2 = input2.components(separatedBy: "\n")
        let letter2 = letters2.randomElement()
        
        let trimmed = letter2?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
    }
}

struct WorkingWithStringsView_Previews: PreviewProvider {
    static var previews: some View {
        WorkingWithStringsView()
    }
}
