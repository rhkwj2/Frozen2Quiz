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
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet var answers: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareQnA()
        setupQnA(question: questions[index])
    }
    
    func prepareQnA() {
        let question1 = Question()
                question1.description = "What is the name of the sea that Elsa must face on her journey?"
                question1.answer0 = "The Light Sea"
                question1.answer1 = "The Salty Sea"
                question1.answer2 = "The Dark Sea"
                question1.answer3 = "The Wet Sea"
                questions.append(question1)
                
                 let question2 = Question()
                question2.description = "In Frozen 2, Olaf is no longer made of snow. Then what is he made of?"
                question2.answer0 = "Ice"
                question2.answer1 = "Permafrost"
                question2.answer2 = "Glass"
                question2.answer3 = "Porelain"
                questions.append(question2)
                
                let question3 = Question()
                question3.description = "What type of amphibian is Bruni?"
                question3.answer0 = "Alamander"
                question3.answer1 = "Frog"
                question3.answer2 = "Nwet"
                question3.answer3 = "Axolotl"
                questions.append(question3)
                
                let question4 = Question()
                question4.description = "What is The Nokk made of?"
                question4.answer0 = "Crystal"
                question4.answer1 = "Water"
                question4.answer2 = "Bubbles"
                question4.answer3 = "Plastic"
                questions.append(question4)
                
                let question5 = Question()
                question5.description = "Elsa and Anna's dad is King Agnarr. What does his name mean in Norse?"
                question5.answer0 = "Greedy King"
                question5.answer1 = "Kind Father"
                question5.answer2 = "Brave Warrior"
                question5.answer3 = "Ruthless Leader"
                questions.append(question5)
                
                let question6 = Question()
                question6.description = "Which character sings the song, Into the Unknown?"
                question6.answer0 = "Anna"
                question6.answer1 = "Elsa"
                question6.answer2 = "Olaf"
                question6.answer3 = "Sven"
                questions.append(question6)
                
                let question7 = Question()
                question7.description = "What is Elsa and Anna's mum called?"
                question7.answer0 = "Helga"
                question7.answer1 = "Hildur"
                question7.answer2 = "Iduna"
                question7.answer3 = "Erla"
                questions.append(question7)
                
                let question8 = Question()
                question8.description = "What are the Earth Giants made from?"
                question8.answer0 = "Mud"
                question8.answer1 = "Leaves"
                question8.answer2 = "Sand"
                question8.answer3 = "Rock"
                questions.append(question8)
                
                let question9 = Question()
                question9.description = "Can you tell us the name of the wind spirit?"
                question9.answer0 = "Harry Karne"
                question9.answer1 = "Gale"
                question9.answer2 = "Bluster"
                question9.answer3 = "Breezi"
                questions.append(question9)
                
                let question10 = Question()
                question10.description = "How many years after the original Frozen story does the new film take place?"
                question10.answer0 = "3"
                question10.answer1 = "2"
                question10.answer2 = "5"
                question10.answer3 = "10"
                questions.append(question10)
    }
    
    func setupQnA(question: Question){
        questionLabel.text = question.description
        let button0: UIButton = answers.filter { (button) -> Bool in
            return button.tag == 0
        }.first!
        button0.setTitle(question.answer0, for: .normal)
        
        let button1: UIButton = answers.filter { (button) -> Bool in
            return button.tag == 1
        }.first!
        button1.setTitle(question.answer1, for: .normal)
        
        let button2: UIButton = answers.filter { (button) -> Bool in
            return button.tag == 2
        }.first!
        button2.setTitle(question.answer2, for: .normal)
        
        let button3: UIButton = answers.filter { (button) -> Bool in
            return button.tag == 3
        }.first!
        button3.setTitle(question.answer3, for: .normal)
        
        let indexString = String(index + 1)
        imageView.image = UIImage(named: indexString)
    }
    
   

    @IBAction func answer1DidPressed(_ sender: UIButton) {
//        switch sender.tag {
//        case 0:
//            let answer1String = questions[index].answer1
//        case 1:
//            let answer2String = questions[index].answer2
//        case 2:
//            let answer3String = questions[index].answer3
//
//        default:
//            break
//        }
        index += 1
        if index < questions.count {
            setupQnA(question: questions[index])
        }
    }
}

