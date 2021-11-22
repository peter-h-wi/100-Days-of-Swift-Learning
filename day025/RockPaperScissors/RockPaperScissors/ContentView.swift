//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by peter wi on 11/22/21.
//

import SwiftUI

/*
 
 Each turn of the game the app will randomly pick either rock, paper, or scissors.
 Each turn the app will alternate between prompting the player to win or lose.
 The player must then tap the correct move to win or lose the game.
 If they are correct they score a point; otherwise they lose a point.
 The game ends after 10 questions, at which point their score is shown.
 
 */



/*
 
 You’ll need to create two @State properties to store the app’s current choice and whether the player should win or lose.
 You can use Int.random(in:) to select a random move. You can use it for whether the player should win too if you want, but there’s an even easier choice: Bool.random() is randomly true or false. After the initial value, use toggle() between rounds so it’s always changing.
 Create a VStack showing the player’s score, the app’s move, and whether the player should win or lose. You can use if shouldWin to return one of two different text views.
 The important part is making three buttons that respond to the player’s move: Rock, Paper, or Scissors.
 Use the font() modifier to adjust the size of your text. If you’re using emoji for the three moves, they also scale. Tip: You can ask for very large system fonts using .font(.system(size: 200)) – they’ll be a fixed size, but at least you can make sure they are nice and big!
 
 
 */

struct ContentView: View {
    let moves = ["✊🏼", "🖐🏼", "✌🏼"]
    @State private var move = Int.random(in: 0...2)
    @State private var isWin = Bool.random()
    @State private var isCorrect = false
    @State private var userSelect = 0
    
    @State private var count = 1
    @State private var score = 0
    @State private var showingScore = false
    @State private var answer = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Round \(count)")
            Text("Score : \(score)")
                .font(Font.system(size: 30))
            Text(moves[move])
                .font(Font.system(size: 100))
            HStack(spacing: 0) {
                Text("How would you ")
                Text("\(isWin ? "win" : "lose")")
                    .foregroundColor(isWin ? .blue : .red)
                Text(" this game?")
            }
            
            HStack {
                ForEach(0..<3) { number in
                    Button(moves[number]) {
                        checkAnswer(number)
                        withAnimation {
                            showingScore.toggle()
                        }
                    }
                    .background()
                    .font(Font.system(size: 70))
                    .opacity(showingScore ? (number == answer ? 1.0 : 0.25) : 1)
                    .scaleEffect(showingScore ? (number == answer ? 1.5 : 0.7) : 1)
                }
            }
        }
        .alert(isPresented: $showingScore) {
            let str = isCorrect ?
                            (count >= 10 ?
                             "You found the right answer! \nYour final score is \(score)!"
                             : "You found the right answer!")
                      : (count >= 10 ?
                            "Wrong. The answer is \(moves[answer]). \nYour final score is \(score)!"
                            : "Wrong. The answer is \(moves[answer])!")
            let msg = Text(str)
            
            return Alert(
                title: isCorrect ? Text("Correct!"): Text("Incorrect!"),
                message: msg,
                dismissButton: .default(count >= 10 ? Text("New Game") : Text("Continue")) {
                    count >= 10 ? self.reset() : self.newGame()
            })
        }
    }
    
    func checkAnswer(_ choice: Int) {
        answer = isWin ? (move+1)%3 : (move+2)%3;
        isCorrect = choice == answer

        if (isCorrect) {
            score += 1
        }
        count += 1
    }
    
    func newGame() {
        isWin.toggle()
        move = Int.random(in: 0...2)
    }
    
    func reset() {
        count = 1
        score = 0
        newGame()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
