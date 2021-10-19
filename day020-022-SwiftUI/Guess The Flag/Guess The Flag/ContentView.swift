//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Peter Wi on 10/18/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var selectedAnswer = 0
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                    // .largeTitle is the largest built-in font size - absed on user setting for their font size
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        self.flagTapped(number)
                        selectedAnswer = number
                    }) {
                        Image(self.countries[number])
                            .renderingMode(.original)
                        // clipShape: rectangle, rounded rectangle, circle, and capsule
                            .clipShape(Capsule())
                        // overlay: drawing a border around the image -> a capture has a black stroke around its edge
                            .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                            .shadow(color: .black, radius: 2)
                    }
                }
                Text("Current score is \(score)")
                Spacer()
            }
            .alert(isPresented: $showingScore) {
                var msg: Text
                if (scoreTitle == "Correct") {
                    msg = Text("Your score is \(score)")
                } else {
                    msg = Text("Wrong! That's the flag of \(countries[selectedAnswer]).\nYour score is \(score)")
                }
                
                return Alert(title: Text(scoreTitle), message: msg, dismissButton: .default(Text("Continue")) {
                    self.askQuestion()
                })
                
            }
        }
        
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
            score -= 1
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
