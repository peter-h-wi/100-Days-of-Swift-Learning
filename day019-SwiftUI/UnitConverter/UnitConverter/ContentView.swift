//
//  ContentView.swift
//  UnitConverter
//
//  Created by Peter Wi on 10/26/21.
//

import SwiftUI

struct ContentView: View {
    
    /*
    private let units = ["Celsius":0, "Fahrenheit":0, "Kelvin":0,
                         "meters":1, "kilometers":1, "feet":1, "yard":1, "miles":1,
                         "seconds":2, "minutes":2, "hours":2, "days":2,
                         "milliliters":3, "liters":3, "cups":3, "pints":3, "gallons":3
    ]
     */
    
    private let unitTypes = ["Temperature", "Length", "Time", "Volume"]
    private let tempTypes = ["Celsius", "Fahrenheit", "Kelvin"]
    private let lengthTypes = ["meters", "kilometers", "feet", "yard", "miles"]
    private let timeTypes = ["seconds", "minutes", "hours", "days"]
    private let volumnTypes = ["milliliters", "liters", "cups", "pints", "gallons"]
    
    @State private var selectedUnit = "Temperature"
    //@State private var numberInput : Double
    //@State private var numberOutput : Double
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Unit Types", selection: $selectedUnit) {
                        ForEach(unitTypes, id: \.self) {
                            Text($0)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
