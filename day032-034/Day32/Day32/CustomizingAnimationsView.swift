//
//  CustomizingAnimationsView.swift
//  Day32
//
//  Created by peter wi on 11/21/21.
//

import SwiftUI

struct CustomizingAnimationsView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Button("Button 1") {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
            .overlay(
                Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
            )
            .animation(.default, value: animationAmount)
            
            
            
            Spacer()
            
            
            
            Button("Button 2") {
                animationAmount -= animationAmount/2
            }
            .padding(50)
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .overlay(
                Circle()
                        .stroke(.red)
                        .scaleEffect(animationAmount)
                        .opacity(2 - animationAmount)
                        .animation(.easeInOut(duration: 1)
                                    .repeatForever(autoreverses: false), value: animationAmount)
            )
            .onAppear {
                animationAmount = 2
            }
        }
        
    }
}

struct CustomizingAnimationsView_Previews: PreviewProvider {
    static var previews: some View {
        CustomizingAnimationsView()
    }
}
