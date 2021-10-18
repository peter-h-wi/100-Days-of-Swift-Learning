//
//  ContentView.swift
//  WeSplit
//
//  Created by Peter Wi on 10/18/21.
//
// it contains the intial user interface (UI) for your program, and is where we'll be doing all the work in this project.



import SwiftUI

struct ContentView: View {
    // @State private var name = "" doesn't work. Because Swift differentiates between "show the value of this property here" and "show the value of this property here, but write any changes back to the property."
    // two-way binding: we bind the text field so that it shows the value of our property, but we also bind it so that any changes to the text field also update the property. --> write a dollar sign before them.
    @State private var name = ""
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}

// this is only used to show a preview of your UI design alongside your code.
// thus, it only affects the way the canvas shows your layouts - it won't change the actual app that gets run.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
