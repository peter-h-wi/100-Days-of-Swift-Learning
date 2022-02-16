//
//  Validating_Disabling_Froms.swift
//  CupcakeCorner
//
//  Created by peter wi on 2/16/22.
//

import SwiftUI

struct Validating_Disabling_Froms: View {
    @State private var username = ""
    @State private var email = ""
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            
            Section {
                Button("Create account") {
                    print("Creating account...")
                }
            }
            .disabled(disableForm)
        }
    }
    
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }
}

struct Validating_Disabling_Froms_Previews: PreviewProvider {
    static var previews: some View {
        Validating_Disabling_Froms()
    }
}
