//
//  WhyModifierOrderMatters.swift
//  ViewAndModifier
//
//  Created by peter wi on 11/12/21.
//

import SwiftUI

struct WhyModifierOrderMatters: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("Coding")
                        .resizable()
                        .frame(height:250)
                        .scaledToFit()
                        .grayscale(1.0)
                    VStack {
                        Text("Why Modifier Order Matters?")
                            .font(Font.custom("Times New Roman", size: 35))
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                        Text("It returns nested ModifiedContent")
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
                    Button("Background First") {
                        
                    }
                    .background(.pink)
                    .frame(width: 250, height: 50)
                    
                    Button("Frame First") {
                        
                    }
                    .frame(width: 250, height: 50)
                    .background(.pink)
                    
                    Text("Rainbow")
                        .foregroundColor(.white)
                        .padding()
                        .background(.red)
                        .padding()
                        .background(.orange)
                        .padding()
                        .background(.yellow)
                        .padding()
                        .background(.green)
                        .padding()
                        .background(.blue)
                        .padding()
                        .background(.indigo)
                        .padding()
                        .background(.purple)
                }
                Spacer()
            }
            .ignoresSafeArea()
        }
    }
}

struct WhyModifierOrderMatters_Previews: PreviewProvider {
    static var previews: some View {
        WhyModifierOrderMatters()
    }
}
