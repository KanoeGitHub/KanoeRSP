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

    @IBOutlet weak var answerimageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!

    //じゃんけん数字
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        var newAnswerNumber = 0  // 新しいじゃんけんの結果を一時的に格納する変数を設ける
        
        //ランダムに結果を出すが、前科の結果と異なる場合のみ採用
        //repeatは繰り返し
        repeat{
            
            newAnswerNumber = Int(arc4random_uniform(3))
            
        }while answerNumber == newAnswerNumber
        
        answerNumber = newAnswerNumber
        if answerNumber == 0 {
            if (sender as AnyObject).tag == 0 {
                answerLabel.text = "相手：グー ・・・あいこ "}
            if (sender as AnyObject).tag == 1 {
                answerLabel.text = "相手：グー ・・・負け "}
            if (sender as AnyObject).tag == 2 {
                answerLabel.text = "相手：グー ・・・勝ち "}
            answerimageView.image = UIImage(named:"rock_1")
        }
        
        else if answerNumber == 1 {
            if (sender as AnyObject).tag == 0 {
                answerLabel.text = "相手：チョキ ・・・勝ち "}
            if (sender as AnyObject).tag == 1 {
                answerLabel.text = "相手：チョキ ・・・あいこ "}
            if (sender as AnyObject).tag == 2 {
                answerLabel.text = "相手：チョキ ・・・負け "}
            answerimageView.image = UIImage(named:"scissors_1")
        }
        
        else if answerNumber == 2 {
            if (sender as AnyObject).tag == 0 {
                answerLabel.text = "相手：パー ・・・負け "}
            if (sender as AnyObject).tag == 1 {
                answerLabel.text = "相手：パー ・・・勝ち "}
            if (sender as AnyObject).tag == 2 {
                answerLabel.text = "相手：パー ・・・あいこ "}
            
            answerimageView.image = UIImage(named:"paper1")
        }
    }
    
  
}

