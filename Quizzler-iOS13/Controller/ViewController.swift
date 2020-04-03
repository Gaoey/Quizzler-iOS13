
//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ui set
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var FirstButton: UIButton!
    @IBOutlet weak var SecondButton: UIButton!
    @IBOutlet weak var ThirdButton: UIButton!
    
    // init struct
    var quiz = QuestionBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        uiLoad()
    }
    
    @IBAction func answerOnPress(_ sender: UIButton) {
        quiz.nextQuestion()
        let answer = sender.currentTitle!
        if (quiz.isCorrect(input: answer)) {
            quiz.addScore()
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(uiLoad), userInfo: nil, repeats: false)
    }
    
    @objc func uiLoad(){
        let choice = quiz.getAnswer()
        QuestionLabel.text = quiz.getQuestion()
        FirstButton.setTitle(choice[0], for: .normal)
        SecondButton.setTitle(choice[1], for: .normal)
        ThirdButton.setTitle(choice[2], for: .normal)
        
        FirstButton.backgroundColor = UIColor.clear
        SecondButton.backgroundColor = UIColor.clear
        ThirdButton.backgroundColor = UIColor.clear
    }
    
}

