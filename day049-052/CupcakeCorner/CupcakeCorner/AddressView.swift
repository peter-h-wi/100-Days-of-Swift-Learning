//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by peter wi on 2/16/22.
//

import SwiftUI

struct AddressView: View {
    @ObservedObject var order: NewOrder
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.orderInfo.name)
                TextField("Street Address", text: $order.orderInfo.streetAddress)
                TextField("City", text: $order.orderInfo.city)
                TextField("Zip", text: $order.orderInfo.zip)
            }
            
            Section {
                NavigationLink {
                    CheckOutView(order: order)
                } label: {
                    Text("Check out")
                }
            }
            .disabled(order.orderInfo.hasValidAddress == false)
        }
        .navigationTitle("Delivery details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddressView(order: NewOrder())
        }
    }
}
