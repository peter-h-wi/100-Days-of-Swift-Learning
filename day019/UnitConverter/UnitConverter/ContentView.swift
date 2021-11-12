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
    private let lengthTypes = ["meters", "kilometers", "feet", "yards", "miles"]
    private let timeTypes = ["seconds", "minutes", "hours", "days"]
    private let volumnTypes = ["milliliters", "liters", "cups", "pints", "gallons"]
    
    @State private var selectedUnit = "Temperature"
    @State private var selectedInputType = "Celsius"
    @State private var selectedOutputType = "Fahrenheit"
    
    @State private var inputAmount = 0.0
    private var outputAmount: Double {
        let inputValue = inputAmount
        var convertedValue = 1.0
        
        switch selectedUnit {
        case "Temperature":
            // convert to kelvin
            switch selectedInputType {
            case "Celsius":
                convertedValue = inputValue + 273.15
            case "Fahrenheit":
                convertedValue = (inputValue - 32) * 5/9 + 273.15
            case "Kelvin":
                convertedValue = inputValue
            default:
                convertedValue = inputValue
            }
        case "Length":
            // convert to meters
            switch selectedInputType {
            case "meters":
                convertedValue = inputValue
            case "kilometers":
                convertedValue = inputValue * 1000
            case "feet":
                convertedValue = inputValue * 0.3048
            case "yards":
                convertedValue = inputValue * 0.9144
            case "miles":
                convertedValue = inputValue * 1609.34
            default:
                convertedValue = inputValue
            }
        case "Time":
            // convert to seconds
            switch selectedInputType {
            case "seconds":
                convertedValue = inputValue
            case "minutes":
                convertedValue = inputValue * 60.0
            case "hours":
                convertedValue = inputValue * 60.0 * 60.0
            case "days":
                convertedValue = inputValue * 24.0 * 60.0 * 60.0
            default:
                convertedValue = inputValue
            }
        case "Volume":
            // convert to milliliters
            switch selectedInputType {
            case "milliliters":
                convertedValue = inputValue
            case "liters":
                convertedValue = inputValue * 1000.0
            case "cups":
                convertedValue = inputValue * 236.588
            case "pints":
                convertedValue = inputValue * 568.261
            case "gallons":
                convertedValue = inputValue * 4546.09
            default:
                convertedValue = inputValue
            }
        default:
            break
        }
        
        switch selectedUnit {
        case "Temperature":
            // convert from kelvin
            switch selectedOutputType {
            case "Celsius":
                convertedValue = convertedValue - 273.15
            case "Fahrenheit":
                convertedValue = (convertedValue - 273.15) * 9.0/5.0 + 32.0
            default:
                break
            }
        case "Length":
            // convert from meters
            switch selectedOutputType {
            case "kilometers":
                convertedValue /= 1000.0
            case "feet":
                convertedValue /= 0.3048
            case "yards":
                convertedValue /= 0.9144
            case "miles":
                convertedValue /= 1609.34
            default:
                break;
            }
        case "Time":
            // convert from seconds
            switch selectedOutputType {
            case "minutes":
                convertedValue /= 60.0
            case "hours":
                convertedValue /= (60.0 * 60.0)
            case "days":
                convertedValue /= (24.0 * 60.0 * 60.0)
            default:
                break
            }
        case "Volume":
            switch selectedOutputType {
                // convert from milliliters
            case "liters":
                convertedValue = convertedValue / 1000.0
            case "cups":
                convertedValue = convertedValue / 236.588
            case "pints":
                convertedValue = convertedValue / 568.261
            case "gallons":
                convertedValue /= 4546.09
            default:
                break
            }
        default:
            break
        }
        
        return convertedValue
    }
    
    @FocusState private var amountIsFocused: Bool
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Unit Types", selection: $selectedUnit) {
                        ForEach(unitTypes, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Choose the unit types")
                }
                Section {
                    TextField("Amount", value: $inputAmount, format: FloatingPointFormatStyle.number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    if (selectedUnit == "Temperature") {
                        Picker("Input Types", selection: $selectedInputType) {
                            ForEach(tempTypes, id: \.self) {
                                Text($0)
                            }
                        }
                    } else if (selectedUnit == "Length") {
                        Picker("Input Types", selection: $selectedInputType) {
                            ForEach(lengthTypes, id: \.self) {
                                Text($0)
                            }
                        }
                    } else if (selectedUnit == "Time") {
                        Picker("Input Types", selection: $selectedInputType) {
                            ForEach(timeTypes, id: \.self) {
                                Text($0)
                            }
                        }
                    } else {
                        Picker("Input Types", selection: $selectedInputType) {
                            ForEach(volumnTypes, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    
                } header: {
                    Text("Input")
                }
        
                
                Section {
                    Text("\(outputAmount.formatted(.number))")
                    if (selectedUnit == "Temperature") {
                        Picker("Output Types", selection: $selectedOutputType) {
                            ForEach(tempTypes, id: \.self) {
                                Text($0)
                            }
                        }.labelsHidden()
                    } else if (selectedUnit == "Length") {
                        Picker("Output Types", selection: $selectedOutputType) {
                            ForEach(lengthTypes, id: \.self) {
                                Text($0)
                            }
                        }
                    } else if (selectedUnit == "Time") {
                        Picker("Output Types", selection: $selectedOutputType) {
                            ForEach(timeTypes, id: \.self) {
                                Text($0)
                            }
                        }
                    } else {
                        Picker("Output Types", selection: $selectedOutputType) {
                            ForEach(volumnTypes, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                } header: {
                    Text("Output")
                }
                
            }
            .navigationTitle("Unit Converter")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
    
    func changeValues(unitType: String) {
        switch unitType {
        case "Temperature":
            selectedInputType = "Celsius"
            selectedOutputType = "Kelvin"
        case "Length":
            selectedInputType = "meters"
            selectedOutputType = "kilometers"
        case "Time":
            selectedInputType = "seconds"
            selectedOutputType = "minutes"
        case "Volume":
            selectedInputType = "milliliters"
            selectedOutputType = "liters"
        default:
            selectedInputType = "Celsius"
            selectedOutputType = "Kelvin"
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
