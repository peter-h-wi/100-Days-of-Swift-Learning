//
//  ViewComposition.swift
//  ViewAndModifier
//
//  Created by peter wi on 11/14/21.
//

import SwiftUI

struct ViewComposition: View {
    var topTitle: some View {
        ZStack {
            Image("Coding")
                .resizable()
                .frame(height:250)
                .scaledToFit()
                .grayscale(1.0)
            VStack {
                CapsuleText(text: "View Composition")
                Text("Break complex views down into smaller views.")
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
            CapsuleText(text: "Editor: Peter Wi")
            Spacer()
        }
    }
    
    struct CapsuleText: View {
        var text: String
        var body: some View {
            Text(text)
                .font(Font.custom("Times New Roman", size: 35))
                .bold()
                .foregroundColor(.white)
                .background(.gray)
                .clipShape(Capsule())
        }
    }
    
    var bodyContent: some View {
        VStack {
            Text("""
                 struct CapsuleText: View {
                     var text: String

                     var body: some View {
                         Text(text)
                             .font(.largeTitle)
                             .padding()
                             .foregroundColor(.white)
                             .background(.blue)
                             .clipShape(Capsule())
                     }
                 }
                 
                 VStack(spacing: 10) {
                     CapsuleText(text: "First")
                     CapsuleText(text: "Second")
                 }
                 """
            )
                .foregroundColor(.blue)
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

struct ViewComposition_Previews: PreviewProvider {
    static var previews: some View {
        ViewComposition()
    }
}
