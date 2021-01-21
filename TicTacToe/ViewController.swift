//
//  ViewController.swift
//  TicTacToe
//
//  Created by Noor Walid on 18/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Working
    @IBAction func restartTheGame(_ sender: UIButton) {
        let buttonStack = [btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9]
        
        for btn in buttonStack {
            btn?.setTitle("-", for: .normal)
            btn?.isEnabled = true
            winnerLabel.isHidden = true
        }
    }
    
    func endGame() {
        let buttonStack = [btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9]
        
        for btn in buttonStack {
            btn?.isEnabled = false
        }
    }
    
    
    //Working
    @IBAction func buttonIsPressed(_ sender: UIButton) {
        let buttonStack1 = [btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9]
        var count = 0
        var iterator = 0
        
        
        while iterator < buttonStack1.count {
            if (buttonStack1[iterator]?.currentTitle == "-") {
                count += 1
            }
            iterator += 1
        }

        if count%2 == 0 {
            sender.setTitle("O", for: .normal)
            sender.isEnabled = false
        }
        else{
            sender.setTitle("X", for: .normal)
            sender.isEnabled = false
        }

        //check winner
        if count != 1 {
            //case 1 (1,2,3)
            if btn1.currentTitle! != "-" && btn1.currentTitle! == btn2.currentTitle! && btn2.currentTitle! == btn3.currentTitle! {
                winnerLabel.isHidden = false
                winnerLabel.text =  "\(btn1.currentTitle!) is the Winner!"
                endGame()
            }
            
            //case 2 (1,5,9)
            if btn1.currentTitle! != "-" && btn1.currentTitle! == btn5.currentTitle! && btn5.currentTitle! == btn9.currentTitle! {
                winnerLabel.isHidden = false
                winnerLabel.text =  "\(btn1.currentTitle!) is the Winner!"
                endGame()
            }
            
            //case 3 (1,4,7)
            if btn1.currentTitle! != "-" && btn1.currentTitle! == btn4.currentTitle! && btn4.currentTitle! == btn7.currentTitle! {
                winnerLabel.isHidden = false
                winnerLabel.text = "\(btn1.currentTitle!) is the Winner!"
                endGame()
            }
            
            //case 4 (2,5,8)
            if btn2.currentTitle! != "-" && btn2.currentTitle! == btn5.currentTitle! && btn5.currentTitle! == btn8.currentTitle! {
                winnerLabel.isHidden = false
                winnerLabel.text = "\(btn2.currentTitle!) is the Winner!"
                endGame()
            }
            
            //case 5 (3,5,7)
            if btn3.currentTitle! != "-" && btn3.currentTitle! == btn5.currentTitle! && btn5.currentTitle! == btn7.currentTitle! {
                winnerLabel.isHidden = false
                winnerLabel.text = "\(btn3.currentTitle!) is the Winner!"
                endGame()
            }
            
            //case 6 (4,5,6)
            if btn4.currentTitle! != "-" && btn4.currentTitle! == btn5.currentTitle! && btn5.currentTitle! == btn6.currentTitle! {
                winnerLabel.isHidden = false
                winnerLabel.text = "\(btn4.currentTitle!) is the Winner!"
                endGame()
            }
            
            //case 7 (7,8,9)
            if btn7.currentTitle! != "-" && btn7.currentTitle! == btn8.currentTitle! && btn8.currentTitle! == btn9.currentTitle! {
                winnerLabel.isHidden = false
                winnerLabel.text = "\(btn7.currentTitle!) is the Winner!"
                endGame()
            }
            
            //case 8 (3,6,9)
            if btn3.currentTitle! != "-" && btn3.currentTitle! == btn6.currentTitle! && btn6.currentTitle! == btn9.currentTitle! {
                winnerLabel.isHidden = false
                winnerLabel.text = "\(btn3.currentTitle!) is the Winner!"
                endGame()
            }
            
        }
        else{
            winnerLabel.isHidden = false
            winnerLabel.text = "It's a Draw!"
        }
    }
    
    
    
}

