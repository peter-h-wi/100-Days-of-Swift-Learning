//
//  ContentView.swift
//  WeSplit
//
//  Created by Peter Wi on 10/18/21.
//
// it contains the intial user interface (UI) for your program, and is where we'll be doing all the work in this project.



import SwiftUI

struct ContentView: View {
    // var body: some View: defines a new computed property called body, which has an interesting type: some View. This means it will return something that conforms to the View protocol, which is our layout.
    var body: some View {
        // NavigationView: large gray space at the top of your UI. This is for adding title and scrolling
        NavigationView {
            // Form: scrolling lists of static controls like text and images, but can also include user interactive controls like text fields, toggle switches, buttons, and more.
            // If you want to have 11 things inside the form you should put some rows inside a Group
            Form {
                Group {
                    Text("Hello, world!")
                    // .padding() method is a modifier, which are regular methods with one small differnec: they always return a new view that contains borth your original data, plus the extra modification you asked for.
                        .padding()
                    Text("Hello, world!")
                }
                Group {
                    Text("Hello, world!")
                    // .padding() method is a modifier, which are regular methods with one small differnec: they always return a new view that contains borth your original data, plus the extra modification you asked for.
                        .padding()
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                // Section: If you want your form to look different when split its items into chunks
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                
            }
            // .navigationTitle(): Swift creates a new form that has a navigation title plus all the existing contents you provided.
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
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
