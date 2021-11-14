//
//  WhyUseStructsForViews.swift
//  ViewAndModifier
//
//  Created by peter wi on 11/12/21.
//

import SwiftUI

struct WhyUseStructsForViews: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("Coding")
                        //.resizable()
                        //.frame(height:300)
                        .scaledToFit()
                        .grayscale(1.0)
                    VStack {
                        Text("Why Does SwiftUI Use Structs For Views?")
                            .font(Font.custom("Times New Roman", size: 35))
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                        Text("Structs are simpler and faster than classes.")
                            .fontWeight(.light)
                            .foregroundColor(.white)
                        Text("It forces us to think about isolating state in a clean way.")
                            .fontWeight(.light)
                            .foregroundColor(.white)
                    }
                }
                HStack {
                    Image(systemName: "face.smiling")
                        .font(.largeTitle)
                        .padding(.leading)
                    Text("Editor: Peter Wi")
                        .font(.headline)
                    Spacer()
                }
                VStack {
                    Text("For UIKit or AppKit, they use classes. However Swift does not.\n\n1. Performance\n- In UIKit, every view descended from a class called UIView which is heavy.\n- In SwiftUI, all views are trivial structs and almost free to create.\n\n2. Easy to Track\n- Classes: are able to change their values freely, which can lead to messier code.\n-> Hard to track the values changed to update the UI.\n- Structs: encourage functional design approach.\n-> Views become simple, inert things that convert data into UI.")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding([.leading, .trailing])
                }
                Spacer()
            }
            .ignoresSafeArea()
        }
    
    }
}

struct WhyUseStructsForViews_Previews: PreviewProvider {
    static var previews: some View {
        WhyUseStructsForViews()
    }
}
