//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Adrien CHABAUD on 2022-08-30.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")

    ]
    
    var questionNumber: Int = 0
    var score: Int = 0
    
    
    // Example of external and Internal parameter name
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer {
            // User got it right
            score += 1
            return true
        } else {
            // User got it false
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getQuestionAnswers(_ pos: Int) -> String {
        return quiz[questionNumber].possibleAnswers[pos]
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        // Check question number so we do not get out
        // of the array
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
