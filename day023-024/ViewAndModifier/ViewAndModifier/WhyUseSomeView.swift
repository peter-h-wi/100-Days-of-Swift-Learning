//
//  WhyUseSomeView.swift
//  ViewAndModifier
//
//  Created by peter wi on 11/12/21.
//

import SwiftUI

struct WhyUseSomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("Coding")
                        .resizable()
                        .frame(height: 300, alignment: .leading)
                        .scaledToFit()
                        .grayscale(1.0)
                    VStack {
                        Text("Why does SwiftUI Use \"some View\" for its View Type?")
                            .font(Font.custom("Times New Roman", size: 35))
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                        Text("SwiftUI replies on a feature called \"opaque return types\"")
                            .fontWeight(.light)
                            .foregroundColor(.white)
                    }
                    .padding()
                }
                HStack {
                    Image(systemName: "face.smiling")
                        .font(.largeTitle)
                        .foregroundColor(.cyan)
                        .padding(.leading)
                    Text("Editor: Peter Wi")
                        .font(.headline)
                        .foregroundColor(.cyan)
                    Spacer()
                }
                VStack {
                    Text("'some View', opaque return types, means that one object that confirms to the View protocol, but we don't want to say what.\n\n1. Using some View is for performance.\n- SwiftUI can understand how the views change.\n\n2. Not to specify nested Modified Content\n- If we don't use some View, we need to write exact nested modified view.")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding([.leading, .top, .trailing])
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        .background(.bar)
                }
                Spacer()
            }
            .ignoresSafeArea()
        }
    }
}

struct WhyUseSomeView_Previews: PreviewProvider {
    static var previews: some View {
        WhyUseSomeView()
    }
}
