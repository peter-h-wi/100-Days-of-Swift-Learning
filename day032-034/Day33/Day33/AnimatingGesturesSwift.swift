//
//  AnimatingGesturesSwift.swift
//  Day33
//
//  Created by peter wi on 11/22/21.
//

import SwiftUI

struct AnimatingGesturesSwift: View {
    // dragAmount = the state to store the amount of their drag
    // @State private var dragAmount = CGSize.zero
    let letters = Array("Hello, SwiftUI")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [.yellow,.red]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 300, height: 200)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
                    // offset(): lets us adjust the X and Y coordinate of a view without moving other views around it. -> it also take a CGSize
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
                            // .onChanged(): lets us run a closure whenever the user moves their finger
                            // .translation: tells us how far it's moved from the start point.
//                    .onChanged { dragAmount = $0.translation }
                            // .onEnded(): lets us run a closure when the user lifts their finger off the screen, ending the drag
//                    .onEnded { _ in
                                // explicit animation => withAnimation
//                        withAnimation(.spring()) {
//                            dragAmount = .zero
//                        }
//                    }
//            )
        HStack(spacing: 0) {
            ForEach(0..<letters.count) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(
                        .default.delay(Double(num) / 20),
                        value: dragAmount
                    )
                
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    enabled.toggle()
                }
        )
        
    }
}

struct AnimatingGesturesSwift_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingGesturesSwift()
    }
}
