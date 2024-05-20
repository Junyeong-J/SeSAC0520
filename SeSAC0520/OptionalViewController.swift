//
//  OptionalViewController.swift
//  SeSAC0520
//
//  Created by 전준영 on 5/20/24.
//

import UIKit

class OptionalViewController: UIViewController {

    
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func keyboardDismiss(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    
    
}
