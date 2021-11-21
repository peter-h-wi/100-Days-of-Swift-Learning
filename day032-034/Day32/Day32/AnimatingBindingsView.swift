//
//  AnimatingBindingsView.swift
//  Day32
//
//  Created by peter wi on 11/21/21.
//

import SwiftUI

struct AnimatingBindingsView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        print(animationAmount)
        
        return VStack {
            // .animation() : specify which value we're watching for changes
            Stepper("Scale amount", value: $animationAmount.animation(
                .easeInOut(duration: 1)
                    .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}

struct AnimatingBindingsView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingBindingsView()
    }
}
