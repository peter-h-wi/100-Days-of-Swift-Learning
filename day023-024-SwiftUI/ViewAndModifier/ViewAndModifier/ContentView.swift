//
//  ContentView.swift
//  ViewAndModifier
//
//  Created by Peter Wi on 10/19/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        GridStack(rows: 4, columns: 4) { row, col in
            Text("R\(row) C\(col)")
        }
        
        GridStack(rows: 4, columns: 4) { row, col in
            HStack {
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
        }
        
        // through builder, then SwiftUI will now automatically create an implicit horizontal stack inside our cell closure.
        GridStack(rows: 4, columns: 4) {row, col in
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row) C\(col)")
        }
        
    }
}

// you can create custom containers in your SwiftUI apps
// first line uses a more advanced feature of Swift called generics, which in this case means "you can provide any kind of content you like, but whatever it is it must conform to the View protocol.
// After the colon we repeat View again to say that GridStack itself also conforms to the View protocol.
struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    // let content line defines a closure that must be able to accept two integers and return some sort of content we can show
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) {row in
                HStack {
                    ForEach(0..<self.columns, id: \.self) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
    
    // builders: allows us to send in several views and have it form an implicit stack for us.
    // @escaping, allows us to store closures away to be used later on.
    // similar to constructor, i think.
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }

}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
