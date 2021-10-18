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
            // Both do the same
            Button("Tap me!") {
                print("Button was tapped")
            }
            
            Button(action: {
                print("Button was tapped")
            }) {
                Text("Tap me!")
            }
            
            // it will load an image called "Pencil" that you have added to your project.
            Image("pencil")
            
            // it will load the same image, but will not read it out for users who have enabled the screen reader. This is useful for images that don't convey additional important information.
            Image(decorative: "pencil")
            
            // it will load the pencil icon that is built into iOS. This uses Apple's SF symbols icon collection, and you can search for icons you like - download Apple's free SF Symbols app from the web to see the full set.
            Image(systemName: "pencil")
            
            // By default the screen reader will read your image name if it is enabled, so make sure you give your images clear names if you want to avoid confusing the user. Or, if they don't actually add information that isn't already elsewhere on the screen, use the Image(decorative:) initializer.
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
