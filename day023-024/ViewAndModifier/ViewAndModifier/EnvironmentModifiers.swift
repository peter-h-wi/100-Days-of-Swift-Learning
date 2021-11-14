//
//  EnvironmentModifiers.swift
//  ViewAndModifier
//
//  Created by peter wi on 11/12/21.
//

import SwiftUI

struct EnvironmentModifiers: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("Coding")
                        .scaledToFit()
                        .grayscale(1.0)
                    VStack {
                        Text("Environment Modifiers")
                            .font(Font.custom("Times New Roman", size: 35))
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                        Text("Many modifiers can be applied to containers.")
                            .fontWeight(.light)
                            .foregroundColor(.white)
                    }
                    .padding()
                }
                HStack {
                    Image(systemName: "face.smiling")
                        .font(.largeTitle)
                        .foregroundColor(.cyan)
                        .padding(.leading)
                    Text("Editor: Peter Wi")
                        .font(.headline)
                        .foregroundColor(.cyan)
                    Spacer()
                }
                VStack {
                    Text(".font(.title)")
                    Text(".foregroundColor(.gray)")
                    Text("are applied to the VStack directly.")
                    Text("It changes all four text views.")
                }
                .font(.headline)
                .foregroundColor(.gray)
                .padding()
                
                VStack {
                    Text(".font(.largeTitle)")
                        .foregroundColor(.cyan)
                        .font(.largeTitle)
                        .blur(radius: 2)
                    Text(".foregroundColor(.cyan)")
                    Text("are applied to the first text view.")
                    Text("It changes the first text view.")
                }
                .font(.headline)
                .foregroundColor(.gray)
                .padding()
                Spacer()
            }
            .ignoresSafeArea()
        }
    }
}

struct EnvironmentModifiers_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentModifiers()
    }
}
