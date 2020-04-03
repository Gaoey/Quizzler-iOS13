//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by gaoey on 2/4/2563 BE.
//  Copyright © 2563 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let answer: [String]
    let correct: String
    
    init(q :String,a :[String], correctAnswer : String ){
        question = q
        answer = a
        correct = correctAnswer
    }
}
