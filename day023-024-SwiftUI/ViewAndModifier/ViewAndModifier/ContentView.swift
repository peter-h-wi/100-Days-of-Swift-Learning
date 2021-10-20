//
//  ContentView.swift
//  ViewAndModifier
//
//  Created by Peter Wi on 10/19/21.
//

import SwiftUI

/* Why we use structs?
 1. structs are simpler and faster than classes.
    - In UIKit, every view descended from a class called UIView which is heavy.
    - In SwiftUI, all our views are trivial structs and almost free to create.
        --> if a struct hold a single integer, the entire size of your struct is that one integer.
 2. it forces us to think about isolating state in a clean way.
    - classes: classes are able to change their values freely, which can lead to messier code
        --> hard for SwiftUI to track the values changed to update the UI
    - structs: encourages us to move to a more functional design approach
        --> view become simple, inert things that convert data into UI
 
 
 */

struct ContentView: View {
    @State private var useRedText = false
    
    var body: some View {
        Button("Hello World") {
            // flip the Boolean between true and false
            self.useRedText.toggle()
        }
        // ternary operator (condition ? option1 when true : option2 when false)
        .foregroundColor(useRedText ? .red : .blue)
        
        /* you can use if conditions.
        if self.useRedText {
            return Text("Hello World")
        } else {
            return Text("Hello World")
                .background(Color.red)
        }
         */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
