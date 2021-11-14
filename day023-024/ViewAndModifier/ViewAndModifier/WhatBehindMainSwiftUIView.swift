//
//  WhatBehindMainSwiftUIView.swift
//  ViewAndModifier
//
//  Created by peter wi on 11/12/21.
//

import SwiftUI

struct WhatBehindMainSwiftUIView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("Coding")
                        .scaledToFit()
                        .grayscale(1.0)
                    VStack {
                        Text("What is Behind the Main SwiftUI View?")
                            .font(Font.custom("Times New Roman", size: 35))
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                        Text("There is nothing behind our view!")
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
                    Text("There is something behind our content view called a UIHostringController: it is the bridge between UIKit and SwiftUI. However, do not modify that. Instead, regard that there is nothing behind our view.\n\nSo, if you want to fill the screen, use 'frame' modifier, passing in .infinity for both its maximum width and maximum height.")
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

struct WhatBehindMainSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        WhatBehindMainSwiftUIView()
    }
}
