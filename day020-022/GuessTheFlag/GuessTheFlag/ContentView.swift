//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by peter wi on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    @State private var isClicked = false
    @State private var animationAmount = 0.0
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var selectedAnswer = 0
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .gray]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .font(.title)
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                    // .largeTitle is the largest built-in font size - absed on user setting for their font size
                        .font(.largeTitle)
                        .fontWeight(.black)
                    Text("Score: \(score)")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        self.flagTapped(number)
                        selectedAnswer = number
                        withAnimation {
                            isClicked.toggle()
                            animationAmount += 360
                        }
                    }) {
                        FlagImage(image: self.countries[number])
                            .rotation3DEffect(.degrees(number == selectedAnswer ? animationAmount : 0), axis: (x:0, y:1, z:0))
                            .opacity(isClicked ? (number == selectedAnswer ? 1 : 0.25) : 1)
                            .scaleEffect(isClicked ? (number == selectedAnswer ? 1 : 0.8) : 1)
                    }
                }
            }
            .alert(isPresented: $showingScore) {
                var msg: Text
                if (scoreTitle == "Correct") {
                    msg = Text("Your score is \(score)")
                } else {
                    msg = Text("That's the flag of \(countries[selectedAnswer]).\nYour score is \(score)")
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
            score = score>0 ? score-1 : 0
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        isClicked = false
    }
}

struct FlagImage: View {
    var image: String
    var body: some View {
        Image(image)
            .renderingMode(.original)
        // clipShape: rectangle, rounded rectangle, circle, and capsule
            .clipShape(Capsule())
        // overlay: drawing a border around the image -> a capture has a black stroke around its edge
            .overlay(Capsule().stroke(Color.white, lineWidth: 2))
            .shadow(color: .black, radius: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
