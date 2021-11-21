//
//  CreatingImplicitAnimationsView.swift
//  Day32
//
//  Created by peter wi on 11/21/21.
//

import SwiftUI

struct CreatingImplicitAnimationsView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap Me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        // blur() modifier: the blur radius start at 0 (no blur), to 3 points, 6 points, ...
        .blur(radius: (animationAmount - 1) * 3)
        // animation() modifier: apply a default animation whenever the value of animationAmount changes
        .animation(.default, value: animationAmount)
    }
}

struct CreatingImplicitAnimationsView_Previews: PreviewProvider {
    static var previews: some View {
        CreatingImplicitAnimationsView()
    }
}
