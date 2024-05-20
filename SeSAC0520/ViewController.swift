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

    @IBAction func oneButtonClicked(_ sender: UIButton) {
        
        oneLabel.text = "4567"
        
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

