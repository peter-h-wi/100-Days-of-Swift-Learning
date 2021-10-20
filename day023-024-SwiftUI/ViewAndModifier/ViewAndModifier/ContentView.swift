//
//  ContentView.swift
//  ViewAndModifier
//
//  Created by Peter Wi on 10/19/21.
//

import SwiftUI

struct ContentView: View {
    // we can create two text views as properties.
    let msg1 = Text("Hi")
    let msg2 = Text("How are you")
    // you can create computed properties if you want, like this:
    var msg3: some View { Text("Doing?") }
    
    var body: some View {
        VStack {
            msg1
            // you can even apply modifiers
                .foregroundColor(.red)
            msg2
                .foregroundColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
