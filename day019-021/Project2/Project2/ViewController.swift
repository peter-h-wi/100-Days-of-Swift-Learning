//
//  ViewController.swift
//  Project2
//
//  Created by Peter Wi on 10/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    var countries = [String]()
    var correctAnswer = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries.append("estonia")
        countries.append("france")
        countries.append("germany")
        countries.append("ireland")
        countries.append("italy")
        countries.append("monaco")
        countries.append("nigeria")
        countries.append("poland")
        countries.append("russia")
        countries.append("spain")
        countries.append("uk")
        countries.append("us")
        // countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        button1.layer.borderColor = UIColor(red: 1.0, green: 0.6, blue: 0.2, alpha: 1.0).cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        
        // askQuestion() - originally there was no parameter. so how to fix it?
        //      1. askQuestion(action: nil)
        //      2. redefine askQuestion() so that the action has default parameter of nil
        //              --> func askQuestion(action: UIAlertAction! = nil) { }
        askQuestion()
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        // shuffle() for in-place shuffling
        // shuffled() to return an new, shuffled array
        countries.shuffle()
        // ==> this will automatically randomize the order of the countries in the array.
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        // for: which state of the button should be changed.
        // .normal: "the standard state of the button."
        // .normal: looks like an enum, but a static property of a struct called UIControlState
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)

        correctAnswer = Int.random(in: 0...2)
        title = countries[correctAnswer].uppercased()
    }

    // @IBOutlet: way of connecting code to storyboard layouts
    // @IBAction: way of making storyboard layouts trigger code
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong"
            score -= 1
        }
        
        // UIAlertController(): used to show an alert with options to the user.
        let ac = UIAlertController(title: title, message: "Your score is \(score).", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true)
        // preferredStyle - 1. .alert: pops up a message box over the center of the screen
        //                  2. .actionSheet: asking them to choose from a set of options
        // UIAlertAction: add a button to the alert that says "Continue", and gives in the style "default".
        //                  1. style: .default, .cancel, and .destructive ==> looks different based on iOS
        //                  2. handler: looking for a closure which is some code that it can execute when the button is tapped.
        // Reason to use askQuestion instead of askQuestion():
        //      1. askQuestion: "here's the name of the method to run"
        //      2. askQuestion(): "run the askQuestion() method now, and it will tell you the name of the method to run."
        // present() - two parameters - 1. view controller: to present
        //                              2. whether to animate the presentation.
        //       (optional parameters)  3. another closure that should be executed when the presentation animation has finished.
    }
    
}

