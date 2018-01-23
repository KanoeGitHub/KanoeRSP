//
//  ViewController.swift
//  kanoersp
//
//  Created by 西岡秋水 on 2018/01/13.
//  Copyright © 2018年 Kanoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var AnswerImageView: UIImageView!
    
    @IBOutlet weak var AnswerLabel: UILabel!

    var answerNumber = 0
    
    @IBAction func shuffleRSP(_ sender: Any) {
        var newAnswerNumber = 0
        
        repeat{
            
            newAnswerNumber = Int(arc4random_uniform(3))
            
        }while answerNumber == newAnswerNumber
        
        answerNumber = newAnswerNumber
        if answerNumber == 0 {
            if (sender as AnyObject).tag == 0 {
                AnswerLabel.text = "相手：グー ・・・結果：あいこ "}
            if (sender as AnyObject).tag == 1 {
                AnswerLabel.text = "相手：グー ・・・結果：負け "}
            if (sender as AnyObject).tag == 2 {
                AnswerLabel.text = "相手：グー ・・・結果：勝ち "}
            AnswerImageView.image = UIImage(named:"rock_1")
        }
        
        else if answerNumber == 1 {
            if (sender as AnyObject).tag == 0 {
                AnswerLabel.text = "相手：チョキ ・・・結果：勝ち "}
            if (sender as AnyObject).tag == 1 {
                AnswerLabel.text = "相手：チョキ ・・・結果：あいこ "}
            if (sender as AnyObject).tag == 2 {
                AnswerLabel.text = "相手：チョキ ・・・結果：負け "}
            AnswerImageView.image = UIImage(named:"scissors_1")
        }
        
        else if answerNumber == 2 {
            if (sender as AnyObject).tag == 0 {
                AnswerLabel.text = "相手：パー ・・・結果：負け "}
            if (sender as AnyObject).tag == 1 {
                AnswerLabel.text = "相手：パー ・・・結果：勝ち "}
            if (sender as AnyObject).tag == 2 {
                AnswerLabel.text = "相手：パー ・・・結果：あいこ "}
            
            AnswerImageView.image = UIImage(named:"paper1")
        }
    }
    
  
}

