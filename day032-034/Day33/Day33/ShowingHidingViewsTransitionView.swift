//
//  ShowingHidingViewsTransitionView.swift
//  Day33
//
//  Created by peter wi on 11/22/21.
//

import SwiftUI

struct ShowingHidingViewsTransitionView: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                        // .asymmetric: lets us use one transition when the view is being shown and another when it's disappearing.
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
            
        }
    }
}

struct ShowingHidingViewsTransitionView_Previews: PreviewProvider {
    static var previews: some View {
        ShowingHidingViewsTransitionView()
    }
}
