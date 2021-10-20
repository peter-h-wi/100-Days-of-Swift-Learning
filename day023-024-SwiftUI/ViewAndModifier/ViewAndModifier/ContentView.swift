//
//  ContentView.swift
//  ViewAndModifier
//
//  Created by Peter Wi on 10/19/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 10){
            // SWiftUI lets us split up one large view into multiple smaller views, and SwiftUI takes care of reassembling them for us.
            Text("Yo")
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .clipShape(Capsule())
            Text("Sup")
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .clipShape(Capsule())
            // this two are identical, so we can wrap them up in a new custom view, like this:
            CapsuleText(text: "Yo")
            // we can also store some modifiers in the view and customize others when we use them.
                .foregroundColor(.white)
            CapsuleText(text: "Sup")
        }
    }
}

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            //.foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Capsule())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
