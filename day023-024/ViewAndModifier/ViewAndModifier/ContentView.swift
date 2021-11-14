//
//  ContentView.swift
//  ViewAndModifier
//
//  Created by peter wi on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    let views = [
            (title: "Why does SwiftUI use structs for views?", view: AnyView(WhyUseStructsForViews())),
            (title: "What is behind the main SwiftUI view?", view: AnyView(WhatBehindMainSwiftUIView())),
            (title: "Why modifier order matters", view: AnyView(WhyModifierOrderMatters())),
            (title: "Why does SwiftUI use 'some View' for its view type?", view: AnyView(WhyUseSomeView())),
            (title: "Condiitional modifiers", view: AnyView(ConditionalModifiers())),
            (title: "Environment modifiers", view: AnyView(EnvironmentModifiers())),
            (title: "Views as properties", view: AnyView(ViewsAsProperties())),
            (title: "View composition", view: AnyView(ViewComposition())),
            (title: "Custom modifiers", view: AnyView(CustomModifiers()))
        ]
    var body: some View {
        NavigationView {
            List(views, id: \.view.id) { view in
                NavigationLink(destination: view.view) {
                    Text(view.title)
                }
            }
            .navigationBarTitle("Views and Modifiers")
        }
    }
}

extension AnyView {
    var id: UUID {
        UUID()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
