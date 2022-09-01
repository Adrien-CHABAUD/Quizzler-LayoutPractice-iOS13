//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    @IBOutlet weak var choiceThreeButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // Equal to string True or string False
        let userGoItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGoItRight {
            // Answer is correct
            sender.backgroundColor = UIColor.green
        } else {
            // Answer is wrong
            sender.backgroundColor = UIColor.red
        }
        
        // Increase the question number
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI(){
        // Update UI with a new question.
        questionLabel.text = quizBrain.getQuestionText()
        
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        // Reset colors of the buttons
        choiceTwoButton.backgroundColor = UIColor.clear
        choiceThreeButton.backgroundColor = UIColor.clear
        
        // Update the progressBar
        progressBar.progress = quizBrain.getProgress()
    }
    
    
    
}

