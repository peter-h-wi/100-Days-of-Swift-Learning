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
        Form {
            // By default, steppers are limited only bt the range of their storage.
            // by using "in" range, we can limit the values
            // "step": how far to move the value each time
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            
            // labelsHidden: remove the label
            // displayComponents: what to show
            // in: limit the range
            DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
            
            // 4. how do we format parameter?
            // day - month - year is not arranging. iOS will automatically format that data using the users' preferences
            Text(Date.now, format: .dateTime.day().month().year())
            
            // 5. alternatively. you can use 'formatted'.
            Text(Date.now.formatted(date: .long, time: .omitted))
        }
    }
    
    /* Handling Date and Hours...
    func trivialExample() {
        /* 1: Track the seconds
         problem: the calander not always follow 24 hr (eg. summer time)
         solution: use iOS framework
         let now = Date.now
         let tomorrow = Date.now.addingTimeInterval(86400)
         let range = now...tomorrow
        */
        
        /* 2
         DateComponents: let us read/write specific parts of a date rather than the whole thing.
         
         var components = DateComponents()
         components.hour = 8
         components.minute = 0
         let date = Calendar.current.date(from: components) ?? Date.now
         --> how do we pull out just the hour and mininute?
        */
        
        /* 3 pull out the hour and minute
         let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
         let hour = components.hour ?? 0
         let minute = components.minute ?? 0
        */
    }
     */
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
