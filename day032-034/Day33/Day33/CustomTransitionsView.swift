//
//  CustumTransitionsView.swift
//  Day33
//
//  Created by peter wi on 11/22/21.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
        // anchor: point of the rotation as the center of the rotation.
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
                // rotationEffect(): lets us rotate a view in 2D space
                    // it always rotates around the Z axis.
            .rotationEffect(.degrees(amount), anchor: anchor)
                // clipped(): stops the view from being drawn outside of its rectangular space. when the view rotates the parts that are lying outside its natural rectangle don't get drawn.
            .clipped()
    }
}

// wrap the modifer in an extension to AnyTransition
extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading), identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}

struct CustomTransitionsView: View {
    @State private var isShowingRed = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingRed.toggle()
            }
        }
    }
}

struct CustomTransitionsView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTransitionsView()
    }
}
