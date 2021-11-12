//
//  ContentView.swift
//  BetterRest
//
//  Created by Peter Wi on 11/2/21.
//

// you need to import CoreML to use ML file we trained.
// keep your imports in alphabetical order --> easier to check.
import CoreML
import SwiftUI

struct ContentView: View {
    
    // @State private var wakeUp = Date.now
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    var title: String {
        // do/catch: using Core ML can throw errors
        // 1. loading the model
        // 2. when we ask predictions
        do {
            // model instance: thing that reads in all our data and will output a prediction.
            // configuration: in case you need to enable a handful of what are fairly obscure options.
            let config = MLModelConfiguration()
            // rename the .mlmodel to SleepCalculator --> class name will be SleepCalculator
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60 // in second --> unit of wake
            let minute = (components.minute ?? 0) * 60 // in second
            
            // the prediction value is some number in seconds. --> convert that into the time
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            
            // thus, when you wake up - sleeping seconds --> when to sleep
            return "Your ideal bedtime is..."
        } catch {
            // when something went wrong.
            return "Error"
        }
    }
    
    var message: String {
        // do/catch: using Core ML can throw errors
        // 1. loading the model
        // 2. when we ask predictions
        do {
            // model instance: thing that reads in all our data and will output a prediction.
            // configuration: in case you need to enable a handful of what are fairly obscure options.
            let config = MLModelConfiguration()
            // rename the .mlmodel to SleepCalculator --> class name will be SleepCalculator
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60 // in second --> unit of wake
            let minute = (components.minute ?? 0) * 60 // in second
            
            // the prediction value is some number in seconds. --> convert that into the time
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            
            // thus, when you wake up - sleeping seconds --> when to sleep
            let sleepTime = wakeUp - prediction.actualSleep
            return sleepTime.formatted(date: .omitted, time: .shortened)
        } catch {
            // when something went wrong.
            return "Sorry, there was a problem calculating your bedtime."
        }
    }
    

    // static: it belongs to the ContentView struct itself rather than a single instance of that struct.
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date.now
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                                        .labelsHidden()
                } header: {
                    Text("When do you want to wake up?")
                }
                
                Section {
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                } header: {
                    Text("Desired amount of sleep")
                }
                
                Section {
                    Picker("Number of cups", selection: $coffeeAmount) {
                        ForEach(1 ..< 21) {
                            Text($0 == 1 ? "1 cup" : "\($0) cups")
                        }
                    }
                    .pickerStyle(.wheel)
                } header: {
                    Text("Daily coffee intake")
                }
                                
                Section {
                    Text("\(message)")
                        .font(.largeTitle)
                } header: {
                    Text("\(title)")
                }
            }
            .navigationTitle("BetterRest")
             /*
            // toolbar: modifier to add a trailing button to the navigation view
            .toolbar {
                Button("Calculate", action: calculateBedtime)
            }
            // alert: modifier to show alertTitle and alertMessage when shoingAlert becomes true.
            .alert(alertTitle, isPresented: $showingAlert) {
                Button("OK") { }
            } message: {
                Text(alertMessage)
            }
             */
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
