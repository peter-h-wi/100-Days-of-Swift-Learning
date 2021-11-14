//
//  ViewsAsProperties.swift
//  ViewAndModifier
//
//  Created by peter wi on 11/12/21.
//

import SwiftUI

struct ViewsAsProperties: View {
    var topTitle: some View {
        ZStack {
            Image("Coding")
                .resizable()
                .frame(height: 250)
                .scaledToFit()
                .grayscale(1.0)
            VStack {
                Text("Views as Properties")
                    .font(Font.custom("Times New Roman", size: 35))
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text("Make it easier to use complex view hierarchies in SwiftUI.")
                    .fontWeight(.light)
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
    var name: some View {
        HStack {
            Image(systemName: "face.smiling")
                .font(.largeTitle)
                .padding(.leading)
            Text("Editor: Peter Wi")
                .font(.headline)
            Spacer()
        }
    }
    
    var bodyContent: some View {
        VStack {
            Text("""
                 // organize in stack
                 var spells: some View {
                     VStack {
                         Text("Lumos")
                         Text("Obliviate")
                     }
                 }
                 // if you don't want to organize
                 var spells: some View {
                     Group {
                         Text("Lumos")
                         Text("Obliviate")
                     }
                 }
                 // it mimics the way body works
                 @ViewBuilder var spells: some View {
                     Text("Lumos")
                     Text("Obliviate")
                 }
                 """
            )
                .foregroundColor(.gray)
                .padding([.leading, .trailing])
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                topTitle
                name
                bodyContent
                Spacer()
            }
            .ignoresSafeArea()
        }
    }
}

struct ViewsAsProperties_Previews: PreviewProvider {
    static var previews: some View {
        ViewsAsProperties()
    }
}
