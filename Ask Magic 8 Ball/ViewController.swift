//
//  ViewController.swift
//  Ask Magic 8 Ball
//
//  Created by Reneil Pascua on 2019-12-23.
//  Copyright © 2019 Reneil Pascua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let answers = ["As I see it, yes.",
    "Ask again later.",
    "Cannot predict now.",
    "Concentrate and ask again.",
    "Don't count on it.",
    "It is certain.",
    "It is decidedly so.",
    "Most likely.",
    "My reply is no.",
    "My sources say no.",
    "Outlook not so good.",
    "Outlook good.",
    "Reply hazy, try again.",
    "Signs point to yes.",
    "Very doubtful.",
    "Without a doubt.",
    "Yes.",
    "Yes - definitely.",
    "Better not tell you now.",
    "You may rely on it."]
    
    @IBOutlet weak var askButton: UIStackView!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func askBtnPressed(_ sender: Any) {
        
        let choice = Int.random(in: 0...19)
        
        UIView.transition(with: answerLabel,
             duration: 0.75,
              options: .transitionCrossDissolve,
           animations: { [weak self] in
            self?.answerLabel.text = self?.answers[choice]
        }, completion: nil)
        
    }
    

}

