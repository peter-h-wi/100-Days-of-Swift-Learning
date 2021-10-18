//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Peter Wi on 10/18/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Vertical stack of views
        VStack(spacing: 20) {
            // spacing: by default there is little or no spacing
            // alignment: by default its views are centered
            // it can have a maximum of 10 children
            
            Text("Hello, world!")
                .padding()
            Text("This is inside a stack")
            Spacer()
        }
        
        // Horizontal Stack
        HStack(spacing: 20) {
            Text("Hello, world!")
                .padding()
            Text("This is inside a stack")
        }
        
        // Arranging things by depth
        ZStack {
            // It doesn't have spacing, because the views overlap.
            // but it has alignment such as (.top) --> from top to bottom, back to front
            Text("Hello, world!")
                .padding()
            Text("This is inside a stack")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
