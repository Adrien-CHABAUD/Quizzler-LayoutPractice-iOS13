//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Adrien CHABAUD on 2022-08-30.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let possibleAnswers: Array<String>
    let answer: String
    
    
    init(q: String, a: Array<String>, correctAnswer: String) {
        self.text = q
        self.possibleAnswers = a
        self.answer = correctAnswer
    }
}
