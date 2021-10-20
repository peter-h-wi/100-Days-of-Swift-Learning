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
            Text("Custom Modifier")
                .modifier(Title())
            
            Text("Added extension")
                .titleStyle()
            Color.blue
                .frame(width: 300, height: 200)
                .watermarked(with: "Peter's SwiftUI")
        }
    }
}

// you can create custom modifiers that do something specific.
// 1. create a custom ViewModifier struct
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
    }
}

// 2. when working with custom modifiers, it's a good idea to create extensions on View that make them easier to use.
extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

// 3. custom modifiers can create new view structure, as needed.
struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}
extension View {
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
