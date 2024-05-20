//
//  ViewController.swift
//  SeSAC0520
//
//  Created by 전준영 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var oneButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    
    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    @IBOutlet var threeLabel: UILabel!
    
    var count = [0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //labelName: 매개변수(Parameter)
        //oneLabel, twoLabel..: 전달인자(Argument)
        designLabelUI(oneLabel, thisIsTextColor: .red)
        designLabelUI(twoLabel, thisIsTextColor: .blue)
        designLabelUI(threeLabel, thisIsTextColor: .purple)
        
        designButtonUI(oneButton, thisIsButtonColor: .red, buttonText: "클릭")
        designButtonUI(twoButton, thisIsButtonColor: .gray, buttonText: "버튼")
        designButtonUI(threeButton, thisIsButtonColor: .cyan, buttonText: "버튼 클릭")
        
        //(): 함수 호출 연산자
        
    }

    
    //1. 어떤 버튼을 클릭했는지 우찌 알까?
    // -> currentTitle (옵셔널 조심, 버전 조심)
    // -> tag
    @IBAction func oneButtonClicked(_ sender: UIButton) {

        count[sender.tag] += 1
        
        oneLabel.text = "\(count[0])번 클릭"
        twoLabel.text = "\(count[1])번 클릭"
        threeLabel.text = "\(count[2])번 클릭"
        
//        if sender.currentTitle == "클릭"{
//            oneLabel.text = "\(oneCount)번"
//            oneCount = oneCount + 1
//        } else if sender.currentTitle == "버튼"{
//            twoLabel.text = "\(twoCount)번"
//            twoCount = twoCount + 1
//        } else {
//            threeLabel.text = "\(threeCount)번"
//            threeCount = threeCount + 1
//        }
    }
    
    
    
    //매개변수(parameter)
    //외부 매개변수(Argument Label) ex. thisIsTextColor
    //내부 매개변수(Parameter Name) ex. color
    //_: 와일드카드 식별자
    func designLabelUI(_ a: UILabel, thisIsTextColor color: UIColor) {
        
        a.text = "0"
        a.textColor = color
        a.font = .boldSystemFont(ofSize: 30)
        a.textAlignment = .center
        
    }
    
    func designButtonUI(_ bt: UIButton, thisIsButtonColor color: UIColor, buttonText text: String) {
        
        bt.setTitleColor(color, for: .normal)
        bt.setTitle(text, for: .normal)
        
    }
    
    
}

