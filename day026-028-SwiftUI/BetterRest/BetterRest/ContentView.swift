//
//  ContentView.swift
//  BetterRest
//
//  Created by Peter Wi on 11/2/21.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    
    var body: some View {
        // By default, steppers are limited only bt the range of their storage.
        // by using "in" range, we can limit the values
        // "step": how far to move the value each time
        Stepper("\(sleepAmount) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        DatePicker("Please enter a date", selection: $wakeUp)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
