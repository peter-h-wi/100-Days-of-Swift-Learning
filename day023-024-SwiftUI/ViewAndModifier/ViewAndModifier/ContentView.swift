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
    /* some View vs View
        some View: one specific type that conforms to the View protocol, but we don't want to say whay.
        1. We must always return the same type of view.
            --> Performace. If we were allowed to change views randomly, it would be really slow for SwiftUI to figure out exactly what changed - it would pretty much need to ditch everything and start again after every small change.
        2. Even though we don't know what view type is going back, the compiler does.
            --> Important because of the way SwiftUI builds up its data using ModifiedContent.
     */
    
    // The View protocol has an associated type attached to it: we need to say exactly what kind of view it is.
    //      --> It's similar to the way Swift doesn't let us say "this variable is an array" and instead requires that we say what's in the array: "this variable is a string array"
    // so...
    /*
      // it's not allowed.
     struct ContentView: View {
        var body: View {
            Text("Hello World")
        }
     }
      // but this is allowed.
     struct ContentView: View {
        var body: Text {
            Text("Hello Wrold")
        }
     }
     */
    /*
     So, we can write combination of ModifiedContent instead of some View, but it's too much work. so we just use some View to say "this will return one specific type of view, such as Button or Text, but I don't want to say what".
     */
    
    var body: some View {
        // If you create a VStack with two text views inside, SwiftUI silently creates a TupleView to contain those two views. Something like this:
        // TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)>
        // that's why SwiftUI doesn't allow more than 10 views inside a parent, cause the TupleView handle 2 views through 10, but no more.

        VStack {
            Text("Hello, world!")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
