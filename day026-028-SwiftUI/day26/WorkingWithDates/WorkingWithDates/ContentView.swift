//
//  ContentView.swift
//  WorkingWithDates
//
//  Created by Peter Wi on 11/2/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        // how can we formate dates and times?
        // 1. rely on the format parameter
        Text(Date.now, format: .dateTime.hour().minute())
        Text(Date.now, format: .dateTime.day().month().year())
        // 2. we can use formatted() method directly on dates.
        Text(Date.now.formatted(date:.long, time:.shortened))
        
    }
    
    func trivialExample() {
        // this would not work sometimes. so use DateComponents
//        let now = Date.now
//        let tomorrow = Date.now.addingTimeInterval(86400)
//        let range = now...tomorrow
        
        
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
        // because of difficults around date validation, that "date(from:)" method actually returns an optional date, so it's good idea to use nil coalescing to say "if that fails, just give me back the current date"
//        let date = Calendar.current.date(from: components) ?? Date.now
        
        // we can ask iOS to provide specific components from a date, then read those back out.
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
