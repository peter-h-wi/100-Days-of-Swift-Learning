//
//  ContentView.swift
//  WeSplit
//
//  Created by Peter Wi on 10/18/21.
//
// it contains the intial user interface (UI) for your program, and is where we'll be doing all the work in this project.



import SwiftUI

struct ContentView: View {
    // property wrapper: a special attribute we can place before our properties that effectively gives them super powers.
    // @State: allows us to work around the limiation of structs: we know we can't change their properties because structs are fixed, but @State allows that value to be stored separately by SwiftUI in a place that can be modified.
    // @State: designed for simple properties that are stored in one view. --> Apple recommends us to add private access control.
    @State private var tapCount = 0
    // why we use struct now class? because SwiftUI destroys and recreates your structs frequently.so keeping them small and simple structs for performance.
    
    // swift just doesn't allow to write mutating computed properties, so we can't write "mutating var body: some View ..."
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
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
