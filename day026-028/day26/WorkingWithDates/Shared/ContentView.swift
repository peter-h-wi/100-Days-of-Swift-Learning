//
//  ContentView.swift
//  Shared
//
//  Created by peter wi on 11/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            // 4. how do we format parameter?
            // day - month - year is not arranging. iOS will automatically format that data using the users' preferences
            Text(Date.now, format: .dateTime.day().month().year())
            
            // 5. alternatively. you can use 'formatted'.
            Text(Date.now.formatted(date: .long, time: .omitted))
        }
    }
    
    // Handling Date and Hours...
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
     
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
