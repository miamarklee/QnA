//
//  ViewController.swift
//  QnA
//
//  Created by apple on 2019/4/25.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var questions = [Question]()
    var index = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!  //陣列都要放!
    
   override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    let imageView = UIImageView(frame: CGRect(x: 80, y: 56, width: 260, height: 275))
    
    let images = [UIImage(named:"tumbler0")!,UIImage(named:"tumbler1")!,UIImage(named:"tumbler2")!,UIImage(named:"tumbler3")!,UIImage(named:"tumbler4")!,UIImage(named:"tumbler5")!,UIImage(named:"tumbler6")!,UIImage(named:"tumbler7")!,UIImage(named:"tumbler8")!]
    let animatedImage = UIImage.animatedImage(with: images, duration: 8)
    imageView.image = animatedImage
    view.addSubview(imageView)
    
    
    let question1 = Question()
    question1.description = "日本第一高山是?"
    question1.answer = "富士山"
    questions.append(question1)
    
    let question2 = Question()
    question2.description = "日本最大的島叫什麼？"
    question2.answer = "本州島"
    questions.append(question2)
    
    let question3 = Question()
    question3.description = "世界第一颗原子彈落在日本的那個城市?"
    question3.answer = "廣島"
    questions.append(question3)
    
    let question4 = Question()
    question4.description = "日本的公共點電話是什么颜色?"
    question4.answer = "灰色"
    questions.append(question4)
        
    let question5 = Question()
    question5.description = "日本汽車駕駛座在哪一邊?"
    question5.answer = "右邊"
    questions.append(question5)
        
    let question6 = Question()
    question6.description = "日本的國花?"
    question6.answer = "櫻花"
    questions.append(question6)
        
    let question7 = Question()
    question7.description = "日本最大的湖泊?"
    question7.answer = "琵琶湖"
    questions.append(question7)
        
    let question8 = Question()
    question8.description = "日本自来 來水可以生飲嗎?"
    question8.answer = "可以"
    questions.append(question8)
        
    let question9 = Question()
    question9.description = "日本軍隊的名稱?"
    question9.answer = "自衛隊"
    questions.append(question9)
        
    let question10 = Question()
    question10.description = "北海道以產什麼為名?"
    question10.answer = "牛奶"
    questions.append(question10)
        
    questions.shuffle()
    showQuestion()
    
}

func showQuestion() {
    questionLabel.text = questions[index].description
    answerLabel.text = ""
}
    
    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text = questions[index].answer
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        if index < questions.count - 1 {
            index = index + 1
            showQuestion()
        }
        
    }
    
    @IBAction func replay(_ sender: Any) {
    
        questions.shuffle()
        index = 0
        showQuestion()
        
    }
    


}
