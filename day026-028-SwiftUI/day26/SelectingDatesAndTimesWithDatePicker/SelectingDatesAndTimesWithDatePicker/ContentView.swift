//
//  ContentView.swift
//  SelectingDatesAndTimesWithDatePicker
//
//  Created by Peter Wi on 11/2/21.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
        // displayComponents: decide what kind of options users should see
            // .date: month, day, and year
            // .hourAndMinute: hour and minute
        // in: limiting the range
            // one-sided ranges: you can specify either the start or end but not both.
            
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
            .labelsHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
