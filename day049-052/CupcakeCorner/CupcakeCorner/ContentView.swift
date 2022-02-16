//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by peter wi on 2/16/22.
//

import SwiftUI

struct ContentView: View {
    /*
     @State: value types
     @StateObject: reference types
     @ObservableObject: class containing structs inside so that we get the benefits of both.
     */
    @StateObject var order = NewOrder()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Select your cake type", selection: $order.orderInfo.type) {
                        ForEach(OrderInfo.types.indices) {
                            Text(OrderInfo.types[$0])
                        }
                    }
                    
                    Stepper("Number of cakes: \(order.orderInfo.quantity)", value: $order.orderInfo.quantity, in: 3...20)
                }
                
                Section {
                    Toggle("Any special requests?", isOn: $order.orderInfo.specialRequestEnabled.animation())
                    
                    if order.orderInfo.specialRequestEnabled {
                        Toggle("Add extra frosting", isOn: $order.orderInfo.extraFrosting)
                        Toggle("Add extra sprinkles", isOn: $order.orderInfo.addSprinkles)
                    }
                }
                
                Section {
                    NavigationLink {
                        AddressView(order: order)
                    } label: {
                        Text("Delivery details")
                    }
                }
            }
            .navigationTitle("Cupcake Corner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
