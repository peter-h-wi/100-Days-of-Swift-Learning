//
//  CustomModifiers.swift
//  ViewAndModifier
//
//  Created by peter wi on 11/14/21.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Times New Roman", size: 35))
            .foregroundColor(.white)
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct CustomModifiers: View {
    var topTitle: some View {
        ZStack {
            Image("Coding")
                .resizable()
                .frame(height:250)
                .scaledToFit()
                .grayscale(1.0)
            VStack {
                Text("Custom Modifiers")
                    .bold()
                    .modifier(Title())
                Text("Create a custom modifier.")
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
                .titleStyle()
                .background(.gray)
                .clipShape(Capsule())
            Spacer()
        }
    }
    
    var bodyContent: some View {
        VStack {
            Text("""
                 1. A method called body that accept whatever content it's being given to work with, and must return some View.
                 
                 struct Title: ViewModifier {
                     func body(content: Content) -> some View {
                         content
                             .font(.largeTitle)
                             .foregroundColor(.white)
                     }
                 }
                 extension View {
                     func titleStyle() -> some View {
                         modifier(Title())
                     }
                 }
                 """
            )
                .foregroundColor(.gray)
                .padding([.trailing])
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

struct CustomModifiers_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifiers()
    }
}
