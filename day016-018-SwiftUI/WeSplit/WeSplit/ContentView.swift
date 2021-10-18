//
//  ContentView.swift
//  WeSplit
//
//  Created by Peter Wi on 10/18/21.
//
// it contains the intial user interface (UI) for your program, and is where we'll be doing all the work in this project.



import SwiftUI

struct ContentView: View {
    let macbookSize = ["13-inch", "14-inch", "16-inch"]
    @State private var selectedMacbook = "14-inch"
    
    var body: some View {
        NavigationView {
            Form {
                // Picker has a label "Select your macbook"
                Picker("Select your macbook", selection: $selectedMacbook) {
                    // id: \.self : this exists because SwiftUI needs to be able to identify every view on the screen uniquely, so it can detect when things change.
                    // \.self : the strings themselves are unique. However, if you added duplicate strings to the macbookSize, you might hit problems.
                    ForEach(macbookSize, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        Form {
            // Foreach: 1. loop over arrays and ranges, creating as many views as needed.
            //          2. doesn't get hit by 10-view limit
            //          3. run a closure once for every item it loops over, passing in the current loop item.
            //          4. useful when working with "Picker" view.
            ForEach(0..<100) {
                Text("Row \($0)")
            }
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
