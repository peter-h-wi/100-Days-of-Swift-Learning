//
//  ControllingAnimationStackView.swift
//  Day33
//
//  Created by peter wi on 11/22/21.
//

import SwiftUI

struct ControllingAnimationStackView: View {
    @State private var enabled = false

    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(nil, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
    }
}

struct ControllingAnimationStackView_Previews: PreviewProvider {
    static var previews: some View {
        ControllingAnimationStackView()
    }
}
