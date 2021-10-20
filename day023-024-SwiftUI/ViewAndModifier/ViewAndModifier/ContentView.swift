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
    
    var body: some View {
        VStack {
        
        VStack {
            Text("Opt 1")
                .font(.largeTitle)
            Text("Opt 2")
            Text("Opt 3")
            Text("Opt 4")
        }
        // environment modifier: you use it instead of adding the modifier to each text.
        .font(.title)
        
        
        /* environment modifier vs. regular modifier
         1. if any of those child views override the same modifier, the child's version takes priority.
            --> font() is an environment modifier, which means the Opt 1 text view can override it with a custom font.
         */
        VStack {
            Text("Opt 1")
                .blur(radius: 5)
            Text("Opt 2")
            Text("Opt 3")
            Text("Opt 4")
        }
        // blur() is a regular modifier, so any blurs applied to child views are added to the VStack blur rather than replacing it.
        .blur(radius: 1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
