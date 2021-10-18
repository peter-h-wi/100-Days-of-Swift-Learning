//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Peter Wi on 10/18/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Color.red is a view in its own right, which is why it can be used like shapes and text.
            Color.red.frame(width: 200, height: 200)
            // you can customize the color
            Color(red: 1, green: 0.6, blue: 0.4).frame(width:100, height: 100)
            
            // you can ignore the safe area
            // if your content is just decorative - like our background color here - then extending it outside the safe area is OK.
            Color.blue.edgesIgnoringSafeArea(.all)
            Text("Your content")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
