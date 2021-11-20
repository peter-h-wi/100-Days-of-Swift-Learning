//
//  SwiftUIView.swift
//  Day29
//
//  Created by peter wi on 11/20/21.
//

import SwiftUI

struct IntroducingListView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List {
            Text("Static row")
            
            ForEach(people, id: \.self) {
                Text($0)
            }
            
            Text("Static row")
        }
//        List(people, id: \.self) {
//            Text($0)
//        }
//        .listStyle(.grouped)
//        List(0..<5) {
//            Text("Dynamic row \($0)")
//
////            Section("Section 1") {
////                Text("Static row 1")
////                Text("Static row 2")
////            }
////            Section("Section 2") {
////                ForEach(0..<5) {
////                    Text("Dynamic row \($0)")
////                }
////            }
////            Section("Section 3") {
////                Text("Static row 3")
////                Text("Static row 4")
////            }
//        }
//        .listStyle(.grouped)
    }
}

struct IntroducingListView_Previews: PreviewProvider {
    static var previews: some View {
        IntroducingListView()
    }
}
