//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by peter wi on 2/15/22.
//

import SwiftUI

class User: ObservableObject, Codable {
    
    // CodingKey: every case in our enum is the name of a property we want to load and save
    enum CodingKeys: CodingKey {
        case name
    }
    
    // var name = "pita"  -> String conforms to Codable.
    
    /*
     @published is a struct called Published that can store any kind of value.
     The whole type is generic. you we need to make an instance of Published<String> - a publishable object that contains a string.
     This is similar to Set<String>
    */
    @Published var name = "pita park"
    
    /*
     Custom initializer will be given some sort of container.
     Use the container to read values for all our properties.
     
     Decoder: it contains all our data, but it's down to us to figure out how to read it.
     required: anyone who subclasses our User class must override this initializer with a custom implementation to make sure they add their own values.
     (alternative) - final: subclassing isn't allowed -> drop the required keyword.
    */
    required init(from decoder: Decoder) throws {
        /*
         ask Decoder instance for a container matching all the coding keys we already set in our CodingKey struct. If those keys don't exist throw a call.
         */
        let container = try decoder.container(keyedBy: CodingKeys.self)
        /*
         read values directly from that container by referencing cases in our enum.
         1. we expect to read a string --> so if name changes to an integer the code will stop compiling.
         2. we use a case in our CodingKeys enum rather than a string, so there's no chance of typos.
         */
        name = try container.decode(String.self, forKey: .name)
    }
    
    
    /*
     Tell Swift how to encode this type - how to archive it ready to write to JSON
     */
    func encode(to encoder: Encoder) throws {
        /*
         Hand an Encoder instance to write to
         Ask it to make container using our CodingKeys enum for keys, then write our values attached to each key.
         */
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    }
}

struct CodableConformance: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CodableConformance()
    }
}
