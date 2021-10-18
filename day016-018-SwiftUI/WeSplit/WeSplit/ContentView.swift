//
//  ContentView.swift
//  WeSplit
//
//  Created by Peter Wi on 10/18/21.
//
// it contains the intial user interface (UI) for your program, and is where we'll be doing all the work in this project.



import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    // if we don't use it, the decimal and number keypads will not be dismissed.
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    // Locale: struct which is responsible for storing user's region settings (from calendar, separate digits, metric system, and more)
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    // if we don't use the keyboardType, it shows regular keyboard.
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    // We need to add a navigation view, so that picker can work.
                    // Picker works outside a form.
                    Picker("Number of people", selection: $numberOfPeople) {
                        // it will show 4 people as its numberOfPeople(index) is 2
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                Section {
                    // the label doesn't work because of the pcikerStyle --> we use header
                    Picker("Tip percentage", selection: $tipPercentage) {
                        //--> this is the first closure which is body.
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    // --> this is the second closure which is header
                    Text("How much tip do you want to leave?")
                }
                
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
            // toolbar(): specify toolbar items for a view.
            .toolbar {
                // ToolbarItemGroup: place one or more buttons in a specific location, and this is where we get to specify we wnat a "keyboard" toolbar - a toolbar that is attached to the keyboard, so it will automatically appear and disappear with the keyboard.
                ToolbarItemGroup(placement: .keyboard) {
                    // Spacer: flexible space. In this case, it will push our button to the right
                    Spacer()
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
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
