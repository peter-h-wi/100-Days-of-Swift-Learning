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
            Text("Hello, world!")
                .padding()
            // it doesn't make the whole background as red, because for SwiftUI developers, there is nothing behind our view.
            // -->.background(Color.red)
            // actually there is something behind our content view called a "UIHostingController": which is the bridge between UIKit and SwiftUI. --> but if you modify, it will not work on. so donjust regard that there is nothing behind our view.
            // thus, what you can do is using frame() modifier.
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue)
                .edgesIgnoringSafeArea(.all)
            /* modifier order matters
                .background(Color.red)
                .frame(width: 200, height: 200)
             --> You will not see 200x200 red button with "Hello World" in the middle
             --> Instead, you will see 200x200 empty square, with "Hello World" in the middle with a red rectangle directly around "Hello World"
             */
            
            Button("Hello SwiftUI") {
                print(type(of: self.body))
            }
            .background(Color.red)
            .frame(width: 200, height: 200)
            // Whenever you add motifier, it stacks new ModifiedContent up.
            // --> the order of your modifiers matter.
            
            Text("Hello World")
                .padding()
                .background(Color.red)
                .padding()
                .background(Color.blue)
                .padding()
                .background(Color.green)
                .padding()
                .background(Color.yellow)
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
