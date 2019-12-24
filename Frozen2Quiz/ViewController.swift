//
//  ViewController.swift
//  Frozen2Quiz
//
//  Created by Kim Yeon Jeong on 2019/12/24.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var index = 0
    var questions = [Question]()
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet var answers: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let question1 = Question()
        question1.description = "What is the name of the sea that Elsa must face on her journey?"
        question1.answer0 = "The Light Sea"
        question1.answer1 = "The Salty Sea"
        question1.answer2 = "The Dark Sea"
        question1.answer3 = "The Wet Sea"
        
         let question2 = Question()
        question2.description = "In Frozen 2, Olaf is no longer made of snow. Then what is he made of?"
        question2.answer0 = "Ice"
        question2.answer1 = "Permafrost"
        question2.answer2 = "Glass"
        question2.answer3 = "The Wet Sea"
        
        func setupQATexts(){
            questionLabel.text = Question().description
            let button0: UIButton = answers.filter { (button) -> Bool in
                return button.tag == 0
            }.first!
            button0.setTitle(question1.answer0, for: .normal)
            
            let button1: UIButton = answers.filter { (button) -> Bool in
                return button.tag == 1
            }.first!
            button1.setTitle(question1.answer1, for: .normal)
            
            let button2: UIButton = answers.filter { (button) -> Bool in
                return button.tag == 2
            }.first!
            button2.setTitle(question1.answer2, for: .normal)
            
            let button3: UIButton = answers.filter { (button) -> Bool in
                return button.tag == 3
            }.first!
            button3.setTitle(question1.answer3, for: .normal)
            
        }
        
        setupQATexts()
        
       // let question2 = Question()
        
        //questions.shuffle()
        
        //questionLabel.text = questions[index].description
        
        
    }

    @IBAction func answer1DidPressed(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            let answer1String = questions[index].answer1
        case 1:
            let answer2String = questions[index].answer2
        case 2:
            let answer3String = questions[index].answer3
            
        default:
            break
        }
        
    }
}

