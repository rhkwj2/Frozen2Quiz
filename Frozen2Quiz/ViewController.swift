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
    
    @IBOutlet var answer: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let question1 = Question()
        question1.description = "What is the name of the sea that Elsa must face on her journey?"
        question1.answer1 = "The Light Sea"
        question1.answer2 = "The Salty Sea"
        question1.answer3 = "The Dark Sea"
        question1.answer4 = "The Wet Sea"
        
        questionLabel.text = question1.description
        
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

