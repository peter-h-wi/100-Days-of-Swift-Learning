//
//  ConditionalModifiers.swift
//  ViewAndModifier
//
//  Created by peter wi on 11/12/21.
//

import SwiftUI

struct ConditionalModifiers: View {
    @State private var useRedText = false
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("Coding")
                        .scaledToFit()
                        .grayscale(1.0)
                    VStack {
                        Text("Conditional Modifiers")
                            .font(Font.custom("Times New Roman", size: 35))
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                        Text("Is it True ? True : False")
                            .fontWeight(.light)
                            .foregroundColor(.white)
                    }
                    .padding()
                }
                HStack {
                    Image(systemName: "face.smiling")
                        .font(.largeTitle)
                        .foregroundColor(useRedText ? .pink : .cyan)
                        .padding(.leading)
                    Text("Editor: Peter Wi")
                        .font(.headline)
                        .foregroundColor(useRedText ? .pink : .cyan)
                    Spacer()
                }
                VStack {
                    
                    Text("Text(\"Editor: Peter Wi\")\n\t.foregroundColor\n\t\t(useRedText ? .pink : .cyan)")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding([.leading, .top, .trailing])
                        
                    Button("Toggle useRedText") {
                        useRedText.toggle()
                    }
                    .foregroundColor(useRedText ? .pink : .cyan)
                    .buttonStyle(.bordered)
                    Text("useRedText = \(useRedText ? "true" : "false")")
                        .foregroundColor(useRedText ? .pink : .cyan)
                        .font(.largeTitle)
                }
                Spacer()
            }
            .ignoresSafeArea()
        }
    }
}

struct ConditionalModifiers_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalModifiers()
    }
}
